loop_request = int(input("Inserire il numero delle ripetizioni:\n"))
namespace = input("Inserire il namespace\n")
block = input("Inserire il nome del blocco:\n")

for i in range(loop_request):
    with open("slot_%d.mcfunction" % i, "w") as fh:
        fh.write(
            f"# Save all the data of the irregular item in the \"gnottero:{namespace}/{block}\" and put back the right item\n"
            f"    execute if data block ~ ~ ~ Items[{{Slot: {i}b}}].Count run data modify storage gnottero:{namespace}/{block} drop_items insert -1 from block ~ ~ ~ Items[{{Slot:{i}b}}]\n"
            f"    loot replace block ~ ~ ~ container.{i} loot gnottero:placeholders/locked_slot" )