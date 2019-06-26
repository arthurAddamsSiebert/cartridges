/**
 * hide and show attribute rows in the search mask
 * @param {String} formName name of the search form
 * @param {String} addId id of the add button
 * @param {String} rowClass css class of the attribute rows
 * @param {String} deleteClass css class of the remove buttons of each row
 * @param {Number} initialRows number of rows to display on start
 */
function searchAttributes(formName, addId, rowClass, deleteClass, initialRows) {
  const $addBtn = $(addId);
  $('form[name="' + formName + '"]').on("click", deleteClass, function(event) {
    event.preventDefault();

    // hide row
    const $row = $(this)
      .closest(rowClass)
      .hide();

    // reset row
    $row.find(":checkbox").prop("checked", false);
    $row.find(":text").val("");
    $row
      .find("select")
      .find("option")
      .prop("selected", false)
      .end()
      .find("option:first")
      .prop("selected", true);

    // display delete button of last row
    const $visibleRows = $(rowClass).filter(":visible");
    if ($visibleRows.length > 1)
      $visibleRows
        .last()
        .find(deleteClass)
        .css("visibility", "visible");

    // show add button if hidden
    if ($addBtn.is(":hidden")) $addBtn.show();
  });

  $addBtn.click(function(event) {
    event.preventDefault();

    const $rows = $(rowClass),
      $row = $rows.filter(":hidden").first();
    if ($row.length > 0) {
      $row.show();

      // hide delete buttons except from current row
      $rows
        .filter(":visible")
        .find(deleteClass)
        .css("visibility", "hidden");
      $row.find(deleteClass).css("visibility", "visible");
    }

    // hide add button of all rows are visible
    if ($rows.filter(":hidden").length === 0) $addBtn.hide();
  });

  // initially hide rows with index > initialRows
  $(rowClass)
    .filter(":gt(" + initialRows + ")")
    .hide();
}

/* legacy code */
const controllElements = {
  data: [],

  /**
   * Inits an attribute section, example see ProductParametricSearchMask.isml
   * input2ID, checkboxID and combo2ID are optional elements
   * @param id
   * @param options = {
   *  deleteButtonID,
   *  addButtonID,
   *  maxVisibileRows,
   *  rowCount,
   *  inputID,
   *  input2ID
   *  comboID
   *  combo2ID
   *  checkboxID
   * }
   */
  initMultipleAttributesSection: function(id, options) {
    this.data[id] = new Array();

    if (options["deleteButtonID"] && options["deleteButtonID"] != "undefined") {
      this.data[id]["deleteButtonID"] = options["deleteButtonID"];
    } else {
      this.data[id]["deleteButtonID"] = id + "_delete";
    }

    if (options["negateID"] && options["negateID"] != "undefined") {
      this.data[id]["negateID"] = options["negateID"];
    } else {
      this.data[id]["negateID"] = id + "_negate";
    }

    if (options["addButtonID"] && options["addButtonID"] != "undefined") {
      this.data[id]["addButtonID"] = options["addButtonID"];
    } else {
      this.data[id]["addButtonID"] = id + "_add";
    }
    if (options["maxVisibleRows"] && options["maxVisibleRows"] != "undefined") {
      this.data[id]["maxVisibleRows"] = options["maxVisibleRows"];
    } else {
      this.data[id]["maxVisibleRows"] = 5;
    }
    if (options["rowCount"] && options["rowCount"] != "undefined") {
      this.data[id]["rowCount"] = options["rowCount"];
    } else {
      this.data[id]["rowCount"] = 0;
    }
    if (options["inputID"] && options["inputID"] != "undefined") {
      this.data[id]["inputID"] = options["inputID"];
    } else {
      this.data[id]["input2ID"] = id + "_input";
    }

    if (options["input2ID"] && options["input2ID"] != "undefined") {
      this.data[id]["input2ID"] = options["input2ID"];
    }
    if (options["comboID"] && options["comboID"] != "undefined") {
      this.data[id]["comboID"] = options["comboID"];
    } else {
      this.data[id]["comboID"] = id + "_combo";
    }
    if (options["combo2ID"] && options["combo2ID"] != "undefined") {
      this.data[id]["combo2ID"] = options["combo2ID"];
    }
    if (options["checkboxID"] && options["checkboxID"] != "undefined") {
      this.data[id]["checkboxID"] = options["checkboxID"];
    }

    const rowCount = this.data[id]["rowCount"];
    const maxVisibleRows = this.data[id]["maxVisibleRows"];
    const inputID = this.data[id]["inputID"];
    const input2ID = this.data[id]["input2ID"];
    const comboID = this.data[id]["comboID"];
    const combo2ID = this.data[id]["combo2ID"];
    const checkboxID = this.data[id]["checkboxID"];
    const addButtonID = this.data[id]["addButtonID"];

    // disable input fields where select box value is 'None'
    for (var i = 0; i < maxVisibleRows; i++) {
      this.chooseAttributeSelectBox(
        comboID + i,
        inputID + i,
        input2ID + i,
        checkboxID + i,
        combo2ID + i
      );
    }

    /* 
		  hide unused rows when form is reloaded 
		  (done with javascript for without javascript all lines are visible)
		 */
    for (var i = 9; i > rowCount; i--) {
      if (document.getElementById(id + i) != null) {
        document.getElementById(id + i).className = "hideTableRow";
      }
    }

    // hide add button from used previous row if form is reloaded
    if (rowCount == maxVisibleRows - 1) {
      document.getElementById(addButtonID).className = "hideTableRow";
    }
  },

  // displays a attribute row, max: 5 rows
  showRow: function(id) {
    const deleteButtonID = this.data[id]["deleteButtonID"];
    const addButtonID = this.data[id]["addButtonID"];
    const maxVisibleRows = this.data[id]["maxVisibleRows"];
    const comboID = this.data[id]["comboID"];
    var rowCount = this.data[id]["rowCount"];

    if (
      rowCount !== -1 &&
      document.getElementById(comboID + rowCount).value === ""
    ) {
      // do not add a new row, if the last one is not filled with information
      return;
    }
    // hide current remove button

    // display next row
    rowCount++;
    document.getElementById(id + rowCount).className = "displayTableRow";
    document.getElementById(deleteButtonID + rowCount).style.visibility =
      "visible";

    // suppress add button line if all rows are displayed
    if (rowCount == maxVisibleRows - 1) {
      document.getElementById(addButtonID).className = "hideTableRow";
    }

    //initializing the value
    document.getElementById(id + rowCount).value = "";

    this.data[id]["rowCount"] = rowCount;
    this.setInputToSuggestBox(id, rowCount);
  },

  // removes the specified attribute entry row
  hideRow: function(id, number) {
    const addButtonID = this.data[id]["addButtonID"];
    const inputID = this.data[id]["inputID"];
    const input2ID = this.data[id]["input2ID"];
    const comboID = this.data[id]["comboID"];
    const combo2ID = this.data[id]["combo2ID"];
    const checkboxID = this.data[id]["checkboxID"];
    const negateID = this.data[id]["negateID"];
    var rowCount = this.data[id]["rowCount"];

    // hide current row

    // show remove button of the previous row
    const isLast = number === rowCount;

    if (!isLast) {
      this.moveAllLines(id, number);
    }
    document.getElementById(id + "" + rowCount).className = "hideTableRow";
    rowCount--;
    // show add button
    document.getElementById(addButtonID).className = "button";

    //reset the value
    document.getElementById(inputID + (rowCount + 1)).value = "";

    //reset the value 2
    if (input2ID != null) {
      const input2Element = document.getElementById(input2ID + (rowCount + 1));
      if (input2Element != null) input2Element.value = "";
    }
    //reset the negateBox
    if (negateID != null) {
      const negateElement = document.getElementById(negateID + (rowCount + 1));
      if (negateElement != null) negateElement.options[0].selected = "true";
    }
    //reset the checkbox
    if (checkboxID != null) {
      const checkboxElement = document.getElementById(
        checkboxID + (rowCount + 1)
      );
      if (checkboxElement != null) checkboxElement.checked = "";
    }

    //reset the combo 2
    if (combo2ID != null) {
      const combo2Element = document.getElementById(combo2ID + (rowCount + 1));
      if (combo2Element != null) combo2Element.options[0].selected = "true";
    }

    //reset the combobox (before is form is send)
    document.getElementById(comboID + (rowCount + 1)).options[0].selected =
      "true";

    this.data[id]["rowCount"] = rowCount;
    if (rowCount === -1) {
      this.showRow(id);
    }
  },
  moveAllLines: function(id, startWith) {
    const rowCount = this.data[id]["rowCount"];
    for (var i = startWith + 1; i <= rowCount; i++) {
      this.copyFromTo(id, i, i - 1);
    }
  },
  copyFromTo: function(id, from, to) {
    const inputID = this.data[id]["inputID"];
    const input2ID = this.data[id]["input2ID"];
    const comboID = this.data[id]["comboID"];
    const combo2ID = this.data[id]["combo2ID"];
    const checkboxID = this.data[id]["checkboxID"];
    const negateID = this.data[id]["negateID"];

    document.getElementById(inputID + to).value = document.getElementById(
      inputID + from
    ).value;
    document.getElementById(comboID + to).value = document.getElementById(
      comboID + from
    ).value;

    //reset the value 2
    if (input2ID != null) {
      const input2ElementFrom = document.getElementById(input2ID + from);
      const input2ElementTo = document.getElementById(input2ID + to);
      if (input2ElementFrom && input2ElementTo) {
        input2ElementTo.value = input2ElementFrom.value;
      }
    }
    if (negateID != null) {
      const negateElementFrom = document.getElementById(negateID + from);
      const negateElementTo = document.getElementById(negateID + to);
      if (negateElementFrom && negateElementTo) {
        negateElementTo.value = negateElementFrom.value;
      }
    }

    if (checkboxID != null) {
      const checkboxElementFrom = document.getElementById(checkboxID + from);
      const checkboxElementTo = document.getElementById(checkboxID + to);
      if (checkboxElementFrom && checkboxElementTo) {
        checkboxElementTo.checked = checkboxElementFrom.checked;
      }
    }

    if (combo2ID != null) {
      const combo2ElementFrom = document.getElementById(combo2ID + from);
      const combo2ElementTo = document.getElementById(combo2ID + to);
      if (combo2ElementFrom && combo2ElementTo) {
        combo2ElementTo.value = combo2lementFrom.value;
      }
    }

    this.setInputToSuggestBox(id, to);
  },
  chooseAttributeSelectBox: function(
    selectBoxID,
    inputFieldID,
    inputField2ID,
    checkboxID,
    selectBox2ID
  ) {
    const selectBox = document.getElementById(selectBoxID);
    const inputField =
      inputFieldID == "undefined"
        ? null
        : document.getElementById(inputFieldID);
    const inputField2 =
      inputField2ID == "undefined"
        ? null
        : document.getElementById(inputField2ID);
    const checkboxField =
      checkboxID == "undefined" ? null : document.getElementById(checkboxID);
    const selectBox2 = document.getElementById(selectBox2ID);

    if (selectBox.options[selectBox.selectedIndex].value == "") {
      // None choosen
      if (inputField != null) {
        inputField.disabled = true;
      }
      if (inputField2 != null) {
        inputField2.disabled = true;
      }
      if (checkboxField != null) {
        checkboxField.disabled = true;
      }
      if (selectBox2 != null) {
        selectBox2.disabled = true;
      }
    } else {
      // something different than "None" selected
      if (inputField != null) {
        inputField.disabled = false;
      }
      if (inputField2 != null) {
        inputField2.disabled = false;
      }
      if (checkboxField != null) {
        checkboxField.disabled = false;
      }
      if (selectBox2 != null) {
        selectBox2.disabled = false;
      }
    }
  },
  onSuggestBoxInput: function(id, number) {
    const comboID = this.data[id]["comboID"] + number;
    const val = $("input[name='Suggest-" + comboID + "']")[0].value;
    const opts = document.getElementById("Suggest-" + comboID).childNodes;
    var found = false;
    for (var i = 0; i < opts.length; i++) {
      if (opts[i].value === val) {
        if (opts[i].dataset.value) {
          $("select[name='" + comboID + "']")[0].value = opts[i].dataset.value;
        }
        found = true;
        break;
      }
    }
    if (!found) {
      $("select[name='" + comboID + "']")[0].value = "";
    }
    const inputID = this.data[id]["inputID"];
    const input2ID = this.data[id]["input2ID"];
    const combo2ID = this.data[id]["combo2ID"];
    const checkboxID = this.data[id]["checkboxID"];
    this.chooseAttributeSelectBox(
      comboID,
      inputID ? inputID + number : "undefined",
      input2ID ? input2ID + number : "undefined",
      checkboxID ? checkboxID + number : "undefined",
      combo2ID ? combo2ID + number : "undefined"
    );
    return;
  },
  setInputToSuggestBox: function(id, number) {
    const comboID = this.data[id]["comboID"] + number;
    const val = $("select[name='" + comboID + "']")[0].value;
    if (val === "") {
      $("input[name='Suggest-" + comboID + "']")[0].value = "";

      const inputID = this.data[id]["inputID"];
      const input2ID = this.data[id]["input2ID"];
      const combo2ID = this.data[id]["combo2ID"];
      const checkboxID = this.data[id]["checkboxID"];
      this.chooseAttributeSelectBox(
        comboID,
        inputID ? inputID + number : "undefined",
        input2ID ? input2ID + number : "undefined",
        checkboxID ? checkboxID + number : "undefined",
        combo2ID ? combo2ID + number : "undefined"
      );
      return;
    }
    const opts = document.getElementById("Suggest-" + comboID).childNodes;
    for (var i = 0; i < opts.length; i++) {
      if (opts[i].dataset && opts[i].dataset.value === val) {
        $("input[name='Suggest-" + comboID + "']")[0].value = opts[i].value;
        return;
      }
    }
  },
  updateAttributeDataType: function(selectBoxID, dataTypeFieldId) {
    const selectBox = document.getElementById(selectBoxID);
    const dataTypeField = document.getElementById(dataTypeFieldId);
    const selectBox_selectedOption = selectBox.options[selectBox.selectedIndex];

    const dataType = selectBox_selectedOption.getAttribute(
      "attribute-data-type"
    );
    if (dataType != null) {
      dataTypeField.value = dataType;
    }
  },
  showPlaceholderSuggest: function() {
    $("#info-placeholder-list").dialog("open");
  }
};

/**
 * Toggle (show/hide) search group sections in product advanced search.
 */
function toggleSearchGroupSection(event) {
  event.preventDefault();

  const href = $(this).attr("href");
  const showSection = href.indexOf("DisplayValue=true") > -1;

  // Persist search section visibility state on the server.
  $.ajax({
    url: href + "&setDisplayOptions"
  });

  // Handle the clicked link and change the arrow (switch css style from 'table_closed' to 'table_opened' and vice versa).
  if (showSection) {
    $(this).attr(
      "href",
      href.replace("DisplayValue=true", "DisplayValue=false")
    );
    $(this).toggleClass("table_closed");
    $(this).toggleClass("table_opened");
  } else {
    $(this).attr(
      "href",
      href.replace("DisplayValue=false", "DisplayValue=true")
    );
    $(this).toggleClass("table_opened");
    $(this).toggleClass("table_closed");
  }

  // Get the row element of the clicked link (search section title).
  const sectionFirstRow = $(this).closest("tr");

  // Get all the next rows before other search group section.
  const nextTableRows = sectionFirstRow.nextUntil("tr.table_detail");

  // Iterate all the rows that should be toggled.
  $.each(nextTableRows, function(i, val) {
    const el = $(this);

    // Always skip the row with the "Find" button.
    if (el.attr("id") == "findParametricRow") {
      return true;
    }

    // Toggle section and its rows (<tr>).
    if (
      el.hasClass("js-row-native-attribute") ||
      el.hasClass("js-row-custom-attribute")
    ) {
      const id = el.attr("id");
      if (id == "nativeAttribute0" || id == "customAttribute0") {
        el.toggle();
      } else {
        if (showSection) {
          if (el.hasClass("was_shown")) {
            el.toggle();
            el.removeClass("was_shown");
          }
        } else {
          if (el.is(":visible")) {
            el.toggle();
            el.addClass("was_shown");
          }
        }
      }
    } else {
      el.toggle();
    }
  });
}

$(function() {
  // Attach on click handler in order to toggle search group sections.
  $("a.table_opened, a.table_closed").on("click", toggleSearchGroupSection);
});
