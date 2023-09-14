TEST_DIR = tests
DATA_TEST_DIR = ${TEST_DIR}/data

INPUT_TEST_DIR = ${TEST_DIR}/cases
OUTPUT_TEST_DIR =  ${TEST_DIR}/outputs

TEST_CASE_SCRIPTS = ${wildcard ${INPUT_TEST_DIR}/*.sh}
TEST_CASE_OUTPUTS = ${TEST_CASE_SCRIPTS:${INPUT_TEST_DIR}/%.sh=${OUTPUT_TEST_DIR}/%.out}
TEST_CASE_DIFFS = ${TEST_CASE_SCRIPTS:${INPUT_TEST_DIR}/%.sh=${OUTPUT_TEST_DIR}/%.diff}

.PHONY: all test check tests cheks clean distclean mostlyclean cleanAll

all: tests

.PHONY: display

display:
	@echo ${TEST_CASE_SCRIPTS}

tests: ${TEST_CASE_DIFFS}


${OUTPUT_TEST_DIR}/%.diff: ${INPUT_TEST_DIR}/%.sh ${OUTPUT_TEST_DIR}/%.out
	@ $< 2>&1 | diff - $(word 2,$^) > $@ || true 
	@ if [ -s $@ ]; then echo $< "failed:"; cat $@; else echo $< "test passed"; fi

clean:
	rm -f ${TEST_CASE_DIFFS}

