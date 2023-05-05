test_that("tcr_dataframe works", {
  data("tcr_dataframe")
  expect_length(tcr_dataframe, 18)
  expect_identical(
    colnames(tcr_dataframe),
    c("barcode", "is_cell", "contig_id", "high_confidence", "length", 
      "chain", "v_gene", "d_gene", "j_gene", "c_gene", "full_length", 
      "productive", "cdr3", "cdr3_nt", "reads", "umis", "raw_clonotype_id", 
      "raw_consensus_id")
  )
  expect_length(rownames(tcr_dataframe), 6812)
  expect_identical(tcr_dataframe[[6]][420], "Multi") # random test
})

test_that("pbmc works", {
  data("pbmc")
  expect_identical(class(pbmc), structure("Seurat", package = "SeuratObject"))
  expect_length(pbmc@meta.data, 5)
})