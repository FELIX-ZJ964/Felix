(function ($) {
    'use strict';

    $.fn.bootstrapTable.locales['zh-CN'] = {
        formatLoadingMessage: function () {
            return 'Trying to load data, please wait……';
        },
        formatRecordsPerPage: function (pageNumber) {
            return pageNumber + ' Records per page';
        },
        formatShowingRows: function (pageFrom, pageTo, totalRows) {
            return ' ' + pageFrom + ' to ' + pageTo + ' of  ' + totalRows + ' records。';
        },
        formatSearch: function () {
            return 'search';
        },
        formatNoMatches: function () {
            return 'No matching records were found';
        },
        formatPaginationSwitch: function () {
            return 'Hide / show Pagination';
        },
        formatRefresh: function () {
            return 'Refresh';
        },
        formatToggle: function () {
            return 'switch';
        },
        formatColumns: function () {
            return 'column';
        },
        formatExport: function () {
            return 'Export data';
        },
        formatClearFilters: function () {
            return 'Empty filter';
        }
    };

    $.extend($.fn.bootstrapTable.defaults, $.fn.bootstrapTable.locales['zh-CN']);

})(jQuery);
