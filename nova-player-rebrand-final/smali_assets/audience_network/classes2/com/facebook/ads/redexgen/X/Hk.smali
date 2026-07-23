.class public abstract Lcom/facebook/ads/redexgen/X/Hk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Hj;,
        Lcom/facebook/ads/redexgen/X/Hh;,
        Lcom/facebook/ads/redexgen/X/Hg;,
        Lcom/facebook/ads/redexgen/X/Hi;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 798
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AQUfun8uWtpAPz6T54JXA8DVdz19i7cg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "A9xQ060X7I53O0IPhfx7pChTdPn89BVs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HA6OUY8aFXslM4giueBriDg2S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9RrkKnX7ioGd8UIKmUAG7ayOJ1mW6fCZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mjtW7HF4JFIVQBQAuWhSkP1cuiqQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mMlJtFouJ3Md3SAWQWV0HJ1iYftjtiDS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7UUPgjEseHhf3IW21ENlLsXr9tr9mert"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hk;->A08()V

    return-void
.end method

.method public static A00(I)I
    .locals 1

    .line 39690
    const/4 v0, 0x0

    .line 39691
    .local v0, "val":I
    :goto_0
    if-lez p0, :cond_0

    .line 39692
    add-int/lit8 v0, v0, 0x1

    .line 39693
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 39694
    :cond_0
    return v0
.end method

.method public static A01(JJ)J
    .locals 6

    .line 39695
    long-to-double v4, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v0, p2

    div-double/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v0, v2

    return-wide v0
.end method

.method public static A02(Ljava/util/List;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;"
        }
    .end annotation

    .line 39696
    .local v8, "vorbisComments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39697
    .local v0, "metadataEntries":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    const/4 v7, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 39698
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 39699
    .local v2, "vorbisComment":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 39700
    .local v3, "keyAndValue":[Ljava/lang/String;
    array-length v9, v6

    const/4 v3, 0x2

    const/16 v2, 0x55

    const/16 v1, 0xa

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v5

    if-eq v9, v3, :cond_0

    .line 39701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/16 v1, 0x20

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 39702
    .end local v2    # "vorbisComment":Ljava/lang/String;
    .end local v3    # "keyAndValue":[Ljava/lang/String;
    .end local v4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39703
    :cond_0
    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "IFt3u6Tbn0k1mtPtGSJYRwNJh6dv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aget-object v3, v6, v4

    const/16 v2, 0x3f

    const/16 v1, 0x16

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 39704
    :try_start_0
    aget-object v0, v6, v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 39705
    .local v4, "decoded":[B
    new-instance v0, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;->A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/androidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39706
    :catch_0
    move-exception v3

    .line 39707
    .local v4, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x21

    const/16 v1, 0x1e

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39708
    .end local v4    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 39709
    :cond_1
    aget-object v2, v6, v4

    aget-object v1, v6, v0

    new-instance v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/vorbis/VorbisComment;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/vorbis/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39710
    .local v4, "entry":Lcom/facebook/ads/androidx/media3/extractor/metadata/vorbis/VorbisComment;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39711
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v8}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Hf;)Lcom/facebook/ads/redexgen/X/Hg;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 39712
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v1

    const v0, 0x564342

    const/4 v3, 0x0

    if-ne v1, v0, :cond_d

    .line 39713
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v10

    .line 39714
    .local v1, "dimensions":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v11

    .line 39715
    .local v0, "entries":I
    new-array v12, v11, [J

    .line 39716
    .local v2, "lengthMap":[J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hf;->A04()Z

    move-result v14

    .line 39717
    .local v10, "isOrdered":Z
    const/4 v5, 0x5

    const/4 v2, 0x1

    if-nez v14, :cond_4

    .line 39718
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hf;->A04()Z

    move-result v9

    .line 39719
    .local v6, "isSparse":Z
    const/4 v4, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v12

    if-ge v4, v0, :cond_6

    .line 39720
    if-eqz v9, :cond_2

    .line 39721
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hf;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39722
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v12, v4

    .line 39723
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39724
    :cond_0
    const-wide/16 v7, 0x0

    sget-object v6, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v6, v0

    const/4 v0, 0x0

    aget-object v6, v6, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v6, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, "HkUiXrMYXoP7dmmSwm7TlUKenEWhRSa7"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "g3UzzRsN8l9NwZbA9Pl4zDU4WOGu2UFV"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    aput-wide v7, v12, v4

    goto :goto_1

    .line 39725
    :cond_2
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v6, v0

    const/4 v0, 0x4

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v6, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, "YIXxF7uzVQ2KRDIuTFnKuNVMBeAy43Wm"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const-string v1, "ZNrvF1xji8SwPYIxx9WGKrLEtje0Ya68"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    add-int/2addr v7, v2

    int-to-long v0, v7

    aput-wide v0, v12, v4

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, "PN1PQj6gHBTdVMYKSOEyBSZrD"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    add-int/2addr v7, v2

    int-to-long v0, v7

    aput-wide v0, v12, v4

    goto :goto_1

    .line 39726
    :cond_4
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v7

    add-int/2addr v7, v2

    .line 39727
    .local v4, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v0, v12

    if-ge v6, v0, :cond_6

    .line 39728
    sub-int v0, v11, v6

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A00(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v5

    .line 39729
    .local v7, "num":I
    const/4 v4, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v4, v5, :cond_5

    array-length v0, v12

    if-ge v6, v0, :cond_5

    .line 39730
    int-to-long v0, v7

    aput-wide v0, v12, v6

    .line 39731
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 39732
    .end local v8    # "j":I
    .end local v7    # "num":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 39733
    goto :goto_2

    .line 39734
    .end local v4    # "length":I
    .end local v6    # "i":I
    :cond_6
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v13

    .line 39735
    .local v11, "lookupType":I
    const/4 v0, 0x2

    if-gt v13, v0, :cond_c

    .line 39736
    if-eq v13, v2, :cond_7

    if-ne v13, v0, :cond_b

    .line 39737
    :cond_7
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39738
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39739
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 39740
    .local v3, "valueBits":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39741
    if-ne v13, v2, :cond_9

    .line 39742
    if-eqz v10, :cond_8

    .line 39743
    int-to-long v2, v11

    sget-object v5, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v5, v0

    const/4 v0, 0x1

    aget-object v5, v5, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39744
    .end local v4
    :cond_8
    const-wide/16 v0, 0x0

    .restart local v4    # "length":I
    goto :goto_4

    .line 39745
    .end local v4    # "length":I
    :cond_9
    int-to-long v0, v11

    int-to-long v2, v10

    mul-long/2addr v0, v2

    goto :goto_4

    .line 39746
    :cond_a
    sget-object v5, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, "D9mmqqJmTqnxQ2dihdU3MUH7YK6oq28f"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    int-to-long v0, v10

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Hk;->A01(JJ)J

    move-result-wide v0

    .line 39747
    .local v4, "lookupValuesCount":J
    .restart local v4    # "lookupValuesCount":J
    :goto_4
    int-to-long v2, v4

    mul-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39748
    .end local v3    # "valueBits":I
    .end local v4    # "lookupValuesCount":J
    :cond_b
    new-instance v9, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/Hg;-><init>(II[JIZ)V

    return-object v9

    .line 39749
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x139

    const/16 v1, 0x2a

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 39750
    .end local v0    # "entries":I
    .end local v1    # "dimensions":I
    .end local v2    # "lengthMap":[J
    .end local v10    # "isOrdered":Z
    .end local v11    # "lookupType":I
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7b

    const/16 v1, 0x37

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39751
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hf;->A01()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39752
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Hh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 39753
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A05(Lcom/facebook/ads/redexgen/X/4v;ZZ)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4v;ZZ)Lcom/facebook/ads/redexgen/X/Hh;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 39754
    if-eqz p1, :cond_0

    .line 39755
    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A0C(ILcom/facebook/ads/redexgen/X/4v;Z)Z

    .line 39756
    :cond_0
    const/4 v3, 0x7

    .line 39757
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0O()J

    move-result-wide v1

    long-to-int v0, v1

    .line 39758
    .local v2, "len":I
    add-int/lit8 v3, v3, 0x4

    .line 39759
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v6

    .line 39760
    .local v1, "vendor":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 39761
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0O()J

    move-result-wide v1

    .line 39762
    .local v3, "commentListLen":J
    long-to-int v0, v1

    new-array v5, v0, [Ljava/lang/String;

    .line 39763
    .local v5, "comments":[Ljava/lang/String;
    add-int/lit8 v7, v3, 0x4

    .line 39764
    const/4 v8, 0x0

    .local v6, "i":I
    :goto_0
    int-to-long v3, v8

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 39765
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0O()J

    move-result-wide v3

    long-to-int v0, v3

    .line 39766
    add-int/lit8 v7, v7, 0x4

    .line 39767
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    .line 39768
    aget-object v0, v5, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v7, v0

    .line 39769
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 39770
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 39771
    :cond_2
    add-int/lit8 v1, v7, 0x1

    .line 39772
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v6, v5, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    .line 39773
    :cond_3
    const/16 v2, 0x11b

    const/16 v1, 0x1e

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Hj;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 39774
    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {v4, p0, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A0C(ILcom/facebook/ads/redexgen/X/4v;Z)Z

    .line 39775
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0F()I

    move-result v6

    .line 39776
    .local v14, "version":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v7

    .line 39777
    .local p0, "channels":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0F()I

    move-result v8

    .line 39778
    .local p1, "sampleRate":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0E()I

    move-result v9

    .line 39779
    .local v3, "bitrateMaximum":I
    if-gtz v9, :cond_0

    .line 39780
    const/4 v9, -0x1

    .line 39781
    .end local v3    # "bitrateMaximum":I
    .local p2, "bitrateMaximum":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0E()I

    move-result v10

    .line 39782
    .local v3, "bitrateNominal":I
    if-gtz v10, :cond_1

    .line 39783
    const/4 v10, -0x1

    .line 39784
    .end local v3    # "bitrateNominal":I
    .local p3, "bitrateNominal":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0E()I

    move-result v11

    .line 39785
    .local v3, "bitrateMinimum":I
    if-gtz v11, :cond_2

    .line 39786
    const/4 v11, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "hx6vx8O5nOwfxHxHuzSsxOXMbdPf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 39787
    .end local v3    # "bitrateMinimum":I
    .local p4, "bitrateMinimum":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v5

    .line 39788
    .local v13, "blockSize":I
    and-int/lit8 v0, v5, 0xf

    int-to-double v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v12, v2

    .line 39789
    .local v11, "blockSize0":I
    and-int/lit16 v2, v5, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v13, v0

    .line 39790
    .local v10, "blockSize1":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/2addr v0, v4

    if-lez v0, :cond_3

    const/4 v14, 0x1

    .line 39791
    .local v12, "framingFlag":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0A()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 39792
    .local v0, "data":[B
    new-instance v5, Lcom/facebook/ads/redexgen/X/Hj;

    .end local v10    # "blockSize1":I
    .local p5, "blockSize1":I
    .end local v11    # "blockSize0":I
    .local p6, "blockSize0":I
    .end local v13    # "blockSize":I
    .local p7, "blockSize":I
    invoke-direct/range {v5 .. v15}, Lcom/facebook/ads/redexgen/X/Hj;-><init>(IIIIIIIIZ[B)V

    return-object v5

    .line 39793
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hk;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x237

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hk;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6bt
        0x19t
        0x3et
        0x36t
        0x33t
        0x3at
        0x3bt
        0x7ft
        0x2bt
        0x30t
        0x7ft
        0x2ft
        0x3et
        0x2dt
        0x2ct
        0x3at
        0x7ft
        0x9t
        0x30t
        0x2dt
        0x3dt
        0x36t
        0x2ct
        0x7ft
        0x3ct
        0x30t
        0x32t
        0x32t
        0x3at
        0x31t
        0x2bt
        0x65t
        0x7ft
        0x28t
        0xft
        0x7t
        0x2t
        0xbt
        0xat
        0x4et
        0x1at
        0x1t
        0x4et
        0x1et
        0xft
        0x1ct
        0x1dt
        0xbt
        0x4et
        0x18t
        0x1t
        0x1ct
        0xct
        0x7t
        0x1dt
        0x4et
        0x1et
        0x7t
        0xdt
        0x1at
        0x1bt
        0x1ct
        0xbt
        0x76t
        0x7et
        0x6ft
        0x7at
        0x7ft
        0x7at
        0x6ft
        0x7at
        0x64t
        0x79t
        0x77t
        0x74t
        0x78t
        0x70t
        0x64t
        0x6bt
        0x72t
        0x78t
        0x6ft
        0x6et
        0x69t
        0x7et
        0x3et
        0x7t
        0x1at
        0xat
        0x1t
        0x1bt
        0x3dt
        0x1ct
        0x1t
        0x4t
        0x3at
        0x27t
        0x2ft
        0x3at
        0x3ct
        0x2bt
        0x3at
        0x3bt
        0x7ft
        0x3ct
        0x37t
        0x3et
        0x2dt
        0x3et
        0x3ct
        0x2bt
        0x3at
        0x2dt
        0x2ct
        0x7ft
        0x78t
        0x29t
        0x30t
        0x2dt
        0x3dt
        0x36t
        0x2ct
        0x78t
        0x40t
        0x5dt
        0x55t
        0x40t
        0x46t
        0x51t
        0x40t
        0x41t
        0x5t
        0x46t
        0x4at
        0x41t
        0x40t
        0x5t
        0x47t
        0x4at
        0x4at
        0x4et
        0x5t
        0x51t
        0x4at
        0x5t
        0x56t
        0x51t
        0x44t
        0x57t
        0x51t
        0x5t
        0x52t
        0x4ct
        0x51t
        0x4dt
        0x5t
        0x7et
        0x15t
        0x5dt
        0x10t
        0x13t
        0x9t
        0x5t
        0x15t
        0x5dt
        0x11t
        0x16t
        0x9t
        0x5t
        0x15t
        0x5dt
        0x11t
        0x17t
        0x78t
        0x5t
        0x44t
        0x51t
        0x5t
        0x3et
        0x23t
        0x2bt
        0x3et
        0x38t
        0x2ft
        0x3et
        0x3ft
        0x7bt
        0x33t
        0x3et
        0x3at
        0x3ft
        0x3et
        0x29t
        0x7bt
        0x2ft
        0x22t
        0x2bt
        0x3et
        0x7bt
        0x6bt
        0x61t
        0x62t
        0x62t
        0x7ft
        0x2dt
        0x79t
        0x74t
        0x7dt
        0x68t
        0x2dt
        0x6at
        0x7ft
        0x68t
        0x6ct
        0x79t
        0x68t
        0x7ft
        0x2dt
        0x79t
        0x65t
        0x6ct
        0x63t
        0x2dt
        0x3ct
        0x2dt
        0x63t
        0x62t
        0x79t
        0x2dt
        0x69t
        0x68t
        0x6et
        0x62t
        0x69t
        0x6ct
        0x6ft
        0x61t
        0x68t
        0x37t
        0x2dt
        0x61t
        0x75t
        0x66t
        0x6at
        0x6et
        0x69t
        0x60t
        0x27t
        0x65t
        0x6et
        0x73t
        0x27t
        0x66t
        0x61t
        0x73t
        0x62t
        0x75t
        0x27t
        0x6at
        0x68t
        0x63t
        0x62t
        0x74t
        0x27t
        0x69t
        0x68t
        0x73t
        0x27t
        0x74t
        0x62t
        0x73t
        0x27t
        0x66t
        0x74t
        0x27t
        0x62t
        0x7ft
        0x77t
        0x62t
        0x64t
        0x73t
        0x62t
        0x63t
        0x26t
        0x32t
        0x21t
        0x2dt
        0x29t
        0x2et
        0x27t
        0x60t
        0x22t
        0x29t
        0x34t
        0x60t
        0x25t
        0x38t
        0x30t
        0x25t
        0x23t
        0x34t
        0x25t
        0x24t
        0x60t
        0x34t
        0x2ft
        0x60t
        0x22t
        0x25t
        0x60t
        0x33t
        0x25t
        0x34t
        0x2t
        0x1t
        0x1t
        0x5t
        0x1bt
        0x1et
        0x4et
        0x1at
        0x17t
        0x1et
        0xbt
        0x4et
        0x9t
        0x1ct
        0xbt
        0xft
        0x1at
        0xbt
        0x1ct
        0x4et
        0x1at
        0x6t
        0xft
        0x0t
        0x4et
        0x5ct
        0x4et
        0x0t
        0x1t
        0x1at
        0x4et
        0xat
        0xbt
        0xdt
        0x1t
        0xat
        0xft
        0xct
        0x2t
        0xbt
        0x54t
        0x4et
        0x38t
        0x34t
        0x25t
        0x25t
        0x3ct
        0x3bt
        0x32t
        0x75t
        0x21t
        0x2ct
        0x25t
        0x30t
        0x75t
        0x3at
        0x21t
        0x3dt
        0x30t
        0x27t
        0x75t
        0x21t
        0x3dt
        0x34t
        0x3bt
        0x75t
        0x65t
        0x75t
        0x3bt
        0x3at
        0x21t
        0x75t
        0x26t
        0x20t
        0x25t
        0x25t
        0x3at
        0x27t
        0x21t
        0x30t
        0x31t
        0x6ft
        0x75t
        0x6ct
        0x70t
        0x7dt
        0x7ft
        0x79t
        0x74t
        0x73t
        0x70t
        0x78t
        0x79t
        0x6et
        0x3ct
        0x73t
        0x7at
        0x3ct
        0x68t
        0x75t
        0x71t
        0x79t
        0x3ct
        0x78t
        0x73t
        0x71t
        0x7dt
        0x75t
        0x72t
        0x3ct
        0x68t
        0x6et
        0x7dt
        0x72t
        0x6ft
        0x7at
        0x73t
        0x6et
        0x71t
        0x6ft
        0x3ct
        0x72t
        0x73t
        0x68t
        0x3ct
        0x66t
        0x79t
        0x6et
        0x73t
        0x79t
        0x78t
        0x3ct
        0x73t
        0x69t
        0x68t
        0x40t
        0x57t
        0x41t
        0x5bt
        0x56t
        0x47t
        0x57t
        0x66t
        0x4bt
        0x42t
        0x57t
        0x12t
        0x55t
        0x40t
        0x57t
        0x53t
        0x46t
        0x57t
        0x40t
        0x12t
        0x46t
        0x5at
        0x53t
        0x5ct
        0x12t
        0x0t
        0x12t
        0x5bt
        0x41t
        0x12t
        0x5ct
        0x5dt
        0x46t
        0x12t
        0x56t
        0x57t
        0x51t
        0x5dt
        0x56t
        0x53t
        0x50t
        0x5et
        0x57t
        0x5dt
        0x46t
        0x9t
        0x5bt
        0x4ct
        0x5at
        0x4ct
        0x5bt
        0x5ft
        0x4ct
        0x4dt
        0x9t
        0x4bt
        0x40t
        0x5dt
        0x5at
        0x9t
        0x44t
        0x5ct
        0x5at
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x9t
        0x53t
        0x4ct
        0x5bt
        0x46t
        0x9t
        0x48t
        0x4ft
        0x5dt
        0x4ct
        0x5bt
        0x9t
        0x44t
        0x48t
        0x59t
        0x59t
        0x40t
        0x47t
        0x4et
        0x9t
        0x4at
        0x46t
        0x5ct
        0x59t
        0x45t
        0x40t
        0x47t
        0x4et
        0x9t
        0x5at
        0x5dt
        0x4ct
        0x59t
        0x5at
        0x10t
        0xbt
        0xbt
        0x44t
        0x17t
        0xct
        0xbt
        0x16t
        0x10t
        0x44t
        0xct
        0x1t
        0x5t
        0x0t
        0x1t
        0x16t
        0x5et
        0x44t
    .end array-data
.end method

.method public static A09(ILcom/facebook/ads/redexgen/X/Hf;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 39794
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v6

    const/4 v5, 0x1

    add-int/2addr v6, v5

    .line 39795
    .local v0, "mappingsCount":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v4, v6, :cond_8

    .line 39796
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v7

    .line 39797
    .local v3, "mappingType":I
    if-eqz v7, :cond_1

    .line 39798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x163

    const/16 v1, 0x29

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x55

    const/16 v1, 0xa

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 39799
    .end local v3    # "mappingType":I
    .end local v4
    .end local v5
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39800
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hf;->A04()Z

    move-result v0

    const/4 v7, 0x4

    if-eqz v0, :cond_3

    .line 39801
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39802
    .end local v4
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 39803
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, "MSIFAaOSOQQOpmu0PO7aKrLsJb3QFagu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v3, v5

    .line 39804
    .local v4, "submaps":I
    .restart local v4    # "submaps":I
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hf;->A04()Z

    move-result v0

    const/16 v8, 0x8

    if-eqz v0, :cond_5

    .line 39805
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v2

    add-int/2addr v2, v5

    .line 39806
    .local v6, "couplingSteps":I
    const/4 v1, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 39807
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39808
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39809
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 39810
    .end local v6    # "couplingSteps":I
    .end local v8    # "j":I
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 39811
    if-le v3, v5, :cond_6

    .line 39812
    const/4 v0, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v0, p0, :cond_6

    .line 39813
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39814
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 39815
    .end local v6    # "j":I
    :cond_6
    const/4 v7, 0x0

    .local v5, "j":I
    :goto_4
    if-ge v7, v3, :cond_0

    .line 39816
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 39817
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, "W7H2tgam7pgMqyIqKZRQoufJib3tzvKG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "g3J7gwvZXejdWYIpZtqDt0lnx57dRd6J"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39818
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39819
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 39820
    .restart local v3    # "mappingType":I
    .restart local v4    # "submaps":I
    :cond_7
    const/16 v2, 0x1eb

    const/16 v1, 0x3a

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 39821
    .end local v2    # "i":I
    .end local v3    # "mappingType":I
    .end local v4    # "submaps":I
    :cond_8
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/Hf;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 39822
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v4

    const/4 v14, 0x1

    add-int/2addr v4, v14

    .line 39823
    .local v1, "floorCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_9

    .line 39824
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v8

    .line 39825
    .local v5, "floorType":I
    const/4 v7, 0x4

    const/16 v6, 0x8

    packed-switch v8, :pswitch_data_0

    .line 39826
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc7

    const/16 v1, 0x29

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 39827
    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v10

    .line 39828
    .local v4, "partitions":I
    const/4 v2, -0x1

    .line 39829
    .local v8, "maximumClass":I
    new-array v9, v10, [I

    .line 39830
    .local v9, "partitionClassList":[I
    const/4 v1, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v1, v10, :cond_1

    .line 39831
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v0

    aput v0, v9, v1

    .line 39832
    aget v0, v9, v1

    if-le v0, v2, :cond_0

    .line 39833
    aget v2, v9, v1

    .line 39834
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39835
    .end local v10    # "j":I
    :cond_1
    add-int/lit8 v0, v2, 0x1

    new-array v8, v0, [I

    .line 39836
    .local v10, "classDimensions":[I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    array-length v0, v8

    const/4 v1, 0x2

    if-ge v11, v0, :cond_4

    .line 39837
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v0

    add-int/2addr v0, v14

    aput v0, v8, v11

    .line 39838
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v2

    .line 39839
    .local v12, "classSubclasses":I
    if-lez v2, :cond_2

    .line 39840
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39841
    :cond_2
    const/4 v1, 0x0

    .local v13, "k":I
    :goto_3
    shl-int v0, v14, v2

    if-ge v1, v0, :cond_3

    .line 39842
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39843
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 39844
    .end local v12    # "classSubclasses":I
    .end local v13    # "k":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 39845
    .end local v4    # "partitions":I
    .end local v6
    .end local v7
    .end local v8    # "maximumClass":I
    .end local v9    # "partitionClassList":[I
    .end local v10    # "classDimensions":[I
    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39846
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39847
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 39848
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, "puZWVQ2pTjmoQkTRd3XFOd7V6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39849
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39850
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v0

    add-int/2addr v0, v14

    .line 39851
    .local v4, "floorNumberOfBooks":I
    const/4 v1, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v1, v0, :cond_8

    .line 39852
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39853
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 39854
    .end local v11    # "j":I
    :cond_4
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39855
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v12

    .line 39856
    .local v6, "rangeBits":I
    const/4 v11, 0x0

    .line 39857
    .local v7, "count":I
    const/4 v7, 0x0

    .restart local v11    # "j":I
    const/4 v6, 0x0

    .local v12, "k":I
    :goto_5
    if-ge v7, v10, :cond_8

    .line 39858
    aget v13, v9, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 39859
    .local v13, "idx":I
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, "4gRGDU2vGyXCYhT5FVmyq5RWvUvygEh7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget v0, v8, v13

    add-int/2addr v11, v0

    .line 39860
    :goto_6
    if-ge v6, v11, :cond_7

    .line 39861
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39862
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 39863
    .end local v13    # "idx":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 39864
    .end local v4    # "floorNumberOfBooks":I
    .end local v5    # "floorType":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 39865
    .end local v3    # "i":I
    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Hf;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 39866
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v8

    const/4 v12, 0x1

    add-int/2addr v8, v12

    .line 39867
    .local v1, "residueCount":I
    const/4 v7, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v7, v8, :cond_7

    .line 39868
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v1

    .line 39869
    .local v4, "residueType":I
    const/4 v0, 0x2

    if-gt v1, v0, :cond_6

    .line 39870
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39871
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39872
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39873
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v6

    add-int/2addr v6, v12

    .line 39874
    .local v5, "classifications":I
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39875
    new-array v4, v6, [I

    .line 39876
    .local v7, "cascade":[I
    const/4 v3, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 39877
    const/4 v1, 0x0

    .line 39878
    .local v9, "highBits":I
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v11

    .line 39879
    .local v10, "lowBits":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hf;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39880
    const/4 v10, 0x5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hk;->A01:[Ljava/lang/String;

    const-string v1, "QebxPehykfYMwUhUEUOD533arJF7pEEp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p0, v10}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v1

    .line 39881
    :cond_1
    mul-int/lit8 v0, v1, 0x8

    add-int/2addr v0, v11

    aput v0, v4, v3

    .line 39882
    .end local v9    # "highBits":I
    .end local v10    # "lowBits":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39883
    .end local v8    # "j":I
    :cond_2
    const/4 v3, 0x0

    .restart local v8    # "j":I
    :goto_2
    if-ge v3, v6, :cond_5

    .line 39884
    const/4 v2, 0x0

    .local v9, "k":I
    :goto_3
    if-ge v2, v5, :cond_4

    .line 39885
    aget v1, v4, v3

    shl-int v0, v12, v2

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 39886
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39887
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 39888
    .end local v9    # "k":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 39889
    .end local v4    # "residueType":I
    .end local v5    # "classifications":I
    .end local v7    # "cascade":[I
    .end local v8    # "j":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 39890
    .restart local v4    # "residueType":I
    :cond_6
    const/16 v2, 0x1c0

    const/16 v1, 0x2b

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 39891
    .end local v3    # "i":I
    .end local v4    # "residueType":I
    :cond_7
    return-void
.end method

.method public static A0C(ILcom/facebook/ads/redexgen/X/4v;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 39892
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v1

    const/4 v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v1, v0, :cond_1

    .line 39893
    if-eqz p2, :cond_0

    .line 39894
    return v2

    .line 39895
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x225

    const/16 v1, 0x12

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39896
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39897
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 39898
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    if-eq v0, p0, :cond_3

    .line 39899
    if-eqz p2, :cond_2

    .line 39900
    return v2

    .line 39901
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb2

    const/16 v1, 0x15

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39902
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39903
    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 39904
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/16 v0, 0x76

    if-ne v1, v0, :cond_4

    .line 39905
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_4

    .line 39906
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/16 v0, 0x72

    if-ne v1, v0, :cond_4

    .line 39907
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/16 v0, 0x62

    if-ne v1, v0, :cond_4

    .line 39908
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/16 v0, 0x69

    if-ne v1, v0, :cond_4

    .line 39909
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_6

    .line 39910
    :cond_4
    if-eqz p2, :cond_5

    .line 39911
    return v2

    .line 39912
    :cond_5
    const/16 v2, 0x5f

    const/16 v1, 0x1c

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 39913
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/4v;I)[Lcom/facebook/ads/redexgen/X/Hi;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 39914
    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A0C(ILcom/facebook/ads/redexgen/X/4v;Z)Z

    .line 39915
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 39916
    .local v0, "numberOfBooks":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/Hf;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Hf;-><init>([B)V

    .line 39917
    .local v1, "bitArray":Lcom/facebook/ads/redexgen/X/Hf;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A03(I)V

    .line 39918
    const/4 v0, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 39919
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hk;->A03(Lcom/facebook/ads/redexgen/X/Hf;)Lcom/facebook/ads/redexgen/X/Hg;

    .line 39920
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39921
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 39922
    .local v2, "timeCount":I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 39923
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 39924
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39925
    :cond_1
    const/16 v2, 0x18c

    const/16 v1, 0x34

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 39926
    .end local v3    # "i":I
    :cond_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hk;->A0A(Lcom/facebook/ads/redexgen/X/Hf;)V

    .line 39927
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hk;->A0B(Lcom/facebook/ads/redexgen/X/Hf;)V

    .line 39928
    invoke-static {p1, v4}, Lcom/facebook/ads/redexgen/X/Hk;->A09(ILcom/facebook/ads/redexgen/X/Hf;)V

    .line 39929
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hk;->A0E(Lcom/facebook/ads/redexgen/X/Hf;)[Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v1

    .line 39930
    .local v3, "modes":[Lcom/facebook/ads/redexgen/X/Hi;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hf;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39931
    return-object v1

    .line 39932
    :cond_3
    const/16 v2, 0xf0

    const/16 v1, 0x2b

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/Hf;)[Lcom/facebook/ads/redexgen/X/Hi;
    .locals 8

    .line 39933
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 39934
    .local v0, "modeCount":I
    new-array v6, v7, [Lcom/facebook/ads/redexgen/X/Hi;

    .line 39935
    .local v1, "modes":[Lcom/facebook/ads/redexgen/X/Hi;
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 39936
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hf;->A04()Z

    move-result v4

    .line 39937
    .local v3, "blockFlag":Z
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v3

    .line 39938
    .local v5, "windowType":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v2

    .line 39939
    .local v4, "transformType":I
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A02(I)I

    move-result v1

    .line 39940
    .local v6, "mapping":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hi;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Hi;-><init>(ZIII)V

    aput-object v0, v6, v5

    .line 39941
    .end local v3    # "blockFlag":Z
    .end local v4    # "transformType":I
    .end local v5    # "windowType":I
    .end local v6    # "mapping":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39942
    .end local v2    # "i":I
    :cond_0
    return-object v6
.end method
