#include "mastercontroller.h"

namespace enigine {
    namespace controllers {

        class MasterController::Implementation{

        public:
            Implementation(MasterController *_masterController): masterController(_masterController)
            {
                navigationController = new NavigationController(masterController);
                commandController = new CommandController(masterController);
            }

            MasterController *masterController{nullptr};
            NavigationController *navigationController{nullptr};
            CommandController *commandController{nullptr};

        };

        MasterController::MasterController(QObject *parent) : QObject(parent)
        {
            implementation.reset(new Implementation(this));
        }

        MasterController::~MasterController(){}

        NavigationController* MasterController::navigationController(){
            return implementation->navigationController;
        }

        CommandController* MasterController::commandController(){
            return implementation->commandController;
        }

    }
}
