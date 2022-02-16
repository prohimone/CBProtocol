from brownie import *
from web3 import Web3

FORKED_LOCAL_ENVIRONMENTS = ["mainnet-fork-dev","ftm-main-fork"]
LOCAL_BLOCKCHAIN_ENVIRONMENTS = ["development", "ganache-local"]

DECIMALS = 2
STARTING_PRICE = 65000 #12 decimals

def get_account():
    if network.show_active() in LOCAL_BLOCKCHAIN_ENVIRONMENTS or network.show_active() in FORKED_LOCAL_ENVIRONMENTS:
        return accounts[0]
    else:
        return accounts.add(config["wallets"]["from_key"])

def deploy_mocks():
    print(f"The active network is {network.show_active()}")
    print("Deploying Mocks...")
    if len(MockV3Aggregator) <= 0:
        # MockV3Aggregator.deploy(DECIMALS, Web3.toWei(STARTING_PRICE,"ether"), {"from": get_account()})
        MockV3Aggregator.deploy(DECIMALS, STARTING_PRICE, {"from": get_account()})
    print("Mocks deployed")