# -*- coding: utf-8 -*-
from openerp import models, fields, api
from openerp.tools import DEFAULT_SERVER_DATE_FORMAT
import logging
logger = logging.getLogger(__name__)


class PfotResPartner(models.Model):
    _inherit = "res.partner"

    no_calendar_for_donation = fields.Boolean(string="Verzicht Kalender bei Spende")
