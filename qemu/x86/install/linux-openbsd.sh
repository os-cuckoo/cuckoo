
CUCKOO_OS="openbsd"
CUCKOO_ISO_FILE="${CUCKOO_ISO_FILE:=5.9}"

.  "$(realpath "$(readlink -f "$(dirname "$0")")/../../..")/lib/hd.sh"
. "$(realpath "$(readlink -f "$(dirname "$0")")/..")/run/$(basename $0)"
