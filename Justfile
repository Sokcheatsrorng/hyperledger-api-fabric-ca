

#implement just file for network set up

network option:
 #!/bin/bash
    case {{option}} in
        "up")
            cd fabric-samples/test-network && bash network.sh up createChannel -ca
            echo "Network has been up...."
            bash network.sh deployCC
            echo "Chaincode has been deploy in network ..."

            ;;

        "down")
            cd fabric-samples/test-network && bash network.sh down
            echo "Network has been remove container and down ..."
            ;;
        "*")0
            echo " Out of option "
            ;;
    esac
