/*
* Copyright (c) 2017 Robert San <robertsanseries@gmail.com>
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*/

using Ciano.Views;
using Ciano.Widgets;

namespace Ciano.Controllers {

	/**
	 * @descrition 
	 * 
	 * @author  Robert San <robertsanseries@gmail.com>
	 * @type    ConverterController
	 */
	public class ConverterController {

		/**
		 * @variables
		 */
		private Gtk.ApplicationWindow app;
		private ConverterView converter_view;

		/**
		 * @construct
		 */
		public ConverterController (Gtk.ApplicationWindow app, ConverterView converter_view) {
			this.app = app;
			this.converter_view = converter_view;
			this.converter_view.headerbar.on_preferences_button_clicked.connect (() => {
				//new DialogPreferences (app);
				new DialogConvertFile (app);
			});


			this.converter_view.source_list.item_selected.connect ((item) => {
            	message("oiiiiiiiiiiiii");
            	//this.converter_view.source_list.show_all (); 

            	//var path = data_model.get_item_path (item);
                //if (path != null) {
                    //this.converter_view.source_list.set_cursor_on_cell (path, get_column (Column.ITEM), text_cell, false);
                //}
            });


		}

		
	}
}