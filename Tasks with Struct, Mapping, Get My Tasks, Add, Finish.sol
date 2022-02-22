// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Tasks {


    struct Task {

        uint id;
        string taskName;
        bool done;

    }

    mapping(address => Task[]) tasks;

    function getMyTasks() public view returns(Task[] memory) {

        return tasks[msg.sender];

    }

    function addTask(string calldata _taskName) public {

        tasks[msg.sender].push(Task(tasks[msg.sender].length, _taskName, false));

    }

    function finishTask(uint _id) public {

        tasks[msg.sender][_id].done = true; 

    }

}
