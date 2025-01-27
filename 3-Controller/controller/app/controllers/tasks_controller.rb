class TasksController < ApplicationController

  # No método index, simule um array de tarefas (por exemplo, ['Tarefa 1', 'Tarefa 2', 'Tarefa 3']).
  def index
    @tasks = ["Tarefa 1", "Tarefa 2", "Tarefa 3"]
    render json: {tasks: @tasks}
  end

  # No método show, receba um parâmetro :id da URL e utilize esse parâmetro para recuperar a tarefa
  # correspondente do array.
  def show
    @tasks = ["Tarefa 1", "Tarefa 2", "Tarefa 3"]
    # indexação do array começa em 0
    task_id = params[:id].to_i - 1
    @task = @tasks[task_id]
    render json: {task: @task}
  end

end
