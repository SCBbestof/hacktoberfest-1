#!/usr/bin/env bash
#made by girlingoggles
#not sorry


function yes_no () {
    all_done=0
    while (( !all_done)); do
	echo -n $@
	read yn
	case $yn in
	    y | Y | yes | Yes | Yea | yea | Yeah | yeah | yep | Yep | yup | Yup\
		| ya | Ya) return 1 ;;
	    n | N | no | No | nah | Nah | nope | Nope | Na | na) return 0 ;;
	esac

	echo "yes or no only, please"
    done
}

function cake () {
    yes_no "Do you like cake?"
if [[ $? == 1 ]] ; then
    echo "The cake is a lie"
    echo "But you already knew that"
    echo " "
else
    echo "The cake is a lie anyway"
    echo "Which do you like?"
    read -p "Pie IceCream Cookies Candy" answer
    case $answer in
	Pie | pie)
	    echo "Pie  is a fantastic choice!" ;;
	Ice | Cream | ice | cream | IceCream | icecream)
	    echo "IceCream is so cold!" ;;
	Cookies | cookies)
	    echo "Anzac, chocolate chip, coconut... There are so many!" ;;
	Candy | candy)
	    echo "Too many varieties of sweets to list, too many to try!" ;;
	*)
	    answer=False
	    echo "Is that a dessert?"  ;;
    esac
    if [[ $answer == False ]] ; then
	echo "I'll have to look into this"
	echo " "
    else
	echo "I like $answer too!"
	echo " "
    fi
fi
}

echo "Hello"
cake
