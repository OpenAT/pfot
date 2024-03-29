# -*- coding: utf-8 -*-
from openerp import models, fields, api
import logging
logger = logging.getLogger(__name__)


# PersonEmailGruppe: FRST groups for email addresses
class FRSTPersonGruppe(models.Model):
    _inherit = "frst.persongruppe"

    _checkbox_fields_group_identifier = {
        'donation_deduction_optout_web': 110493,
        'donation_deduction_disabled': 128782,
        'donation_receipt_web': 20168,
        'opt_out': 11102,
        'no_calendar_for_donation': 406038,
    }
    logger.info("PFOT frst.persongruppe _checkbox_fields_group_identifier: %s" % _checkbox_fields_group_identifier)
