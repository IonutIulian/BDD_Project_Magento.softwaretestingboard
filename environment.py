from browser import Browser
from pages.base_page import Base_page
from pages.checkout_page import Checkout_page
from pages.create_account_page import Account_page
from pages.home_page import Home_page
from pages.men_category_page import Men_page


def before_all(context):
    context.browser = Browser()
    context.base_page = Base_page()
    context.home_page_obiect = Home_page()
    context.checkout_page_obiect = Checkout_page()
    context.account_page_object = Account_page()
    context.men_page_object = Men_page()

def after_all(context):
    context.browser.close()
