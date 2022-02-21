// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;
import "../interfaces/IVaultPairData.sol";

contract VaultPairData is IVaultPairData{
    uint256 public override CLOSED_COLLATERIZATION_RATE; // 75%
    uint256 public override OPEN_COLLATERIZATION_RATE; // 77%
    uint256 public override COLLATERIZATION_RATE_PRECISION; // Must be less than EXCHANGE_RATE_PRECISION (due to optimization in math)
    uint256 public override MINIMUM_TARGET_UTILIZATION; // 70%
    uint256 public override MAXIMUM_TARGET_UTILIZATION; // 80%
    uint256 public override UTILIZATION_PRECISION;
    uint256 public override FULL_UTILIZATION;
    uint256 public override FULL_UTILIZATION_MINUS_MAX;
    uint256 public override FACTOR_PRECISION;

    uint64 public override STARTING_INTEREST_PER_SECOND;
    uint64 public override MINIMUM_INTEREST_PER_SECOND;
    uint64 public override MAXIMUM_INTEREST_PER_SECOND;
    uint256 public override INTEREST_ELASTICITY;

    uint256 public override EXCHANGE_RATE_PRECISION;

    uint256 public override LIQUIDATION_MULTIPLIER; // add 12%
    uint256 public override LIQUIDATION_MULTIPLIER_PRECISION;

    constructor() public{
        CLOSED_COLLATERIZATION_RATE = 75000; // 75%
        OPEN_COLLATERIZATION_RATE = 77000; // 77%
        COLLATERIZATION_RATE_PRECISION = 1e5; // Must be less than EXCHANGE_RATE_PRECISION (due to optimization in math)
        MINIMUM_TARGET_UTILIZATION = 7e17; // 70%
        MAXIMUM_TARGET_UTILIZATION = 8e17; // 80%
        UTILIZATION_PRECISION = 1e18;
        FULL_UTILIZATION = 1e18;
        FULL_UTILIZATION_MINUS_MAX = FULL_UTILIZATION - MAXIMUM_TARGET_UTILIZATION;
        FACTOR_PRECISION = 1e18;

        STARTING_INTEREST_PER_SECOND = 317097920; // approx 1% APR
        MINIMUM_INTEREST_PER_SECOND = 79274480; // approx 0.25% APR
        MAXIMUM_INTEREST_PER_SECOND = 317097920000; // approx 1000% APR
        INTEREST_ELASTICITY = 28800e36; // Half or double in 28800 seconds (8 hours) if linear

        EXCHANGE_RATE_PRECISION = 1e18;

        LIQUIDATION_MULTIPLIER = 112000; // add 12%
        LIQUIDATION_MULTIPLIER_PRECISION = 1e5;

    }


}