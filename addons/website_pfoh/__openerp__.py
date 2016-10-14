# -*- coding: utf-8 -*-
##############################################################################
#
#    OpenERP, Open Source Management Solution
#    Copyright (C) 2004-2009 Tiny SPRL (<http://tiny.be>).
#    Copyright (C) 2010-2012 OpenERP s.a. (<http://openerp.com>).
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################

{
    'name': "website_pfoh",
    'summary': """Pfotenhilfe Webpage Anpassungen""",
    'description': """

Pfotenhilfe CMS Anpassungen
=============================

Anpassungen an CSS, Snippets, Images und alles was zum CMS gehört.

    """,
    'author': "Datadialog",
    'website': "http://www.datadialog.net",
    'category': 'Uncategorized',
    'version': '0.2',
    'depends': [
        'base',
        'website',
        'website_crm',
        'website_snippet_contact_form',
    ],
    'installable': True,
    'data': [
        'static/src/xml/website_templates.xml',
        #'views/snippets.xml',
        'views/snippet_options.xml',
        'views/contact_form.xml',
    ],
}
