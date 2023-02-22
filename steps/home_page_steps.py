from behave import *


@given("Home page: I am on magento.softwaretestingboard.com starting page")
def steo_impl(context):
    context.home_page_obiect.navigate_to_homepage()

@when ("Home page: I check if I am on the right page")
def step_impl(context):
    context.home_page_obiect.check_url()

@then ("Home page: Check that the welcome message is displayed")
def step_impl(context):
    context.home_page_obiect.check_welcome_msg()

@when ("Home page: Press the Create an Account link")
def step_impl(context):
    context.home_page_obiect.click_create_account()

@when ("Home page: I click on the Men button category")
def step_impl(context):
    context.home_page_obiect.category_men()

@when ("Home page: Click the cart button")
def step_impl(context):
    context.home_page_obiect.acces_cart()

@then ("Home page: Click the Proceed checkout button")
def step_impl(context):
    context.home_page_obiect.perform_checkout()

@when ('Home page: I search for a specific "{item_name}"')
def step_impl(context,item_name):
    context.home_page_obiect.search_item(item_name)

@then ("Home page: Adding the item to the wish list")
def step_impl(context):
    context.home_page_obiect.add_to_wishlist()

@when ("Home page: Click the reviews button")
def step_impl(context):
    context.home_page_obiect.check_reviews()

@when ("Home page: Set a rating for the item")
def step_impl(context):
    context.home_page_obiect.rate_item()

@when ('Home page: Write the "{review_title}" and the "{text_review}"')
def step_impl(context,review_title,text_review):
    context.home_page_obiect.write_review(review_title,text_review)

@then ("Home page: Click submit review and check the confirmation message")
def step_impl(context):
    context.home_page_obiect.submit_check_message()
