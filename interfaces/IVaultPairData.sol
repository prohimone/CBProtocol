pragma solidity 0.6.12;

interface IVaultPairData {
    function CLOSED_COLLATERIZATION_RATE() external view returns(uint256);
    function OPEN_COLLATERIZATION_RATE() external view returns(uint256);
    function COLLATERIZATION_RATE_PRECISION() external view returns(uint256);
    function MINIMUM_TARGET_UTILIZATION() external view returns(uint256);
    function MAXIMUM_TARGET_UTILIZATION() external view returns(uint256);
    function UTILIZATION_PRECISION() external view returns(uint256);
    function FULL_UTILIZATION() external view returns(uint256);
    function FULL_UTILIZATION_MINUS_MAX() external view returns(uint256);
    function FACTOR_PRECISION() external view returns(uint256);

    function STARTING_INTEREST_PER_SECOND() external view returns(uint64);
    function MINIMUM_INTEREST_PER_SECOND() external view returns(uint64);
    function MAXIMUM_INTEREST_PER_SECOND() external view returns(uint64);
    function INTEREST_ELASTICITY() external view returns(uint256);

    function EXCHANGE_RATE_PRECISION() external view returns(uint256);

    function LIQUIDATION_MULTIPLIER() external view returns(uint256);
    function LIQUIDATION_MULTIPLIER_PRECISION() external view returns(uint256);
   
}

