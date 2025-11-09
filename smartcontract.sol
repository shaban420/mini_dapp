// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



contract Task_Manager {

   
    struct task {
        string text;
        bool is_done;
    }

    // This array stores all tasks
    task[] public all_tasks;


    event task_added(uint256 task_id, string text);
    event task_completed(uint256 task_id);

   
    function add_task(string memory _text) public {
        require(bytes(_text).length > 0, "Task cannot be empty");

        all_tasks.push(task(_text, false));

        emit task_added(all_tasks.length - 1, _text);
    }

   
    function complete_task(uint256 _task_id) public {
        require(_task_id < all_tasks.length, "Invalid task ID");

        all_tasks[_task_id].is_done = true;

        emit task_completed(_task_id);
    }


    function get_task_count() public view returns (uint256) {
        return all_tasks.length;
    }

   
    function get_task(uint256 _task_id) public view returns (string memory text, bool is_done) {
        require(_task_id < all_tasks.length, "Invalid task ID");
        task memory t = all_tasks[_task_id];
        return (t.text, t.is_done);
    }
}
