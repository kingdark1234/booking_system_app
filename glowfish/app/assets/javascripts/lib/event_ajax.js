            $.ajax({
                    url: "glowfish/app/model/event",
                    data: data_item,
                    type: "POST",
                    dataType: 'json',
                    error: function(XMLHttpRequest, textStatus, errorThrown) {
                        notify("Ajax error");
                        if (errorThrown != 'abort' && XMLHttpRequest.status != 0) {
                        notify('unable to get data, error:' + textStatus);
                      }
                    },
                    success: function(data,textStatus,) {
                      //self._renderEvents(data, $weekDayColumns);

                        notify('Ok');
                    }
                });