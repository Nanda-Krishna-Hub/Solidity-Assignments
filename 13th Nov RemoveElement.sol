//SPDX-License-Identifier:MIT

pragma solidity 0.8.6;

contract RemoveElement
{
    uint[] nums = [1,2,3,4,5];
    function getValues() public view returns(uint[] memory)
    {
        return nums;
    }
    function removeAtIndex(uint index) public
    {
        delete nums[index];
        for(uint i = index; i<nums.length-1; i++)
        {
            nums[i] = nums[i+1];
        }
        nums.pop();
    }
}