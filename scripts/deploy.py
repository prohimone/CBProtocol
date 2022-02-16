from brownie import *
from scripts.helpful_scripts import deploy_mocks, get_account, LOCAL_BLOCKCHAIN_ENVIRONMENTS
from web3 import Web3

def deploy_fund_me():
    account = get_account()

    # live chains
    # if network.show_active() not in LOCAL_BLOCKCHAIN_ENVIRONMENTS:
    #     price_feed_address = config["networks"][network.show_active()]["ftm_usd_price_feed"]
    #     price_feed_address2 = config["networks"][network.show_active()]["ftm_usd_price_feed"]
    # # development chain
    # else:
    #     deploy_mocks()
    #     price_feed_address = MockV3Aggregator[-1].address
    

    # BCCVault = BCVaultV1.deploy("0x27Ce41c3cb9AdB5Edb2d8bE253A1c6A64Db8c96d", BCEuro.address, price_feed_address, price_feed_address2, {"from": account}, publish_source=config["networks"][network.show_active()]["verify"])

    # print(f"BCC Token Contract deployed to: {BCC.address}")
    # print(f"BCC Vault Contract deployed to: {BCCVault.address}")
    

    # return BCC

 
def main():
    deploy_fund_me()