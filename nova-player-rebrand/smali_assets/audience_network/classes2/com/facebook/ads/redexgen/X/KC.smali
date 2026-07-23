.class public final Lcom/facebook/ads/redexgen/X/KC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/K8;,
        Lcom/facebook/ads/redexgen/X/K9;,
        Lcom/facebook/ads/androidx/media3/extractor/text/ssa/SsaStyle$SsaBorderStyle;,
        Lcom/facebook/ads/androidx/media3/extractor/text/ssa/SsaStyle$SsaAlignment;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:Ljava/lang/Integer;

.field public final A04:Ljava/lang/Integer;

.field public final A05:Ljava/lang/String;

.field public final A06:Z

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 867
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6HehIsk5UTdQ8YwGLZ8u"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HAdSfToap9UtbNGqUYR7rfHJagkNK6YB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nRaQRY6nAt4CmU7uet6FlSe17FvhWZYJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8IXD4Lb5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pveGGnyGJyzGs1AN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NjeHfVTmziUN3gQJJf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "25ItPJi0PU1GUlSkVtogtpFEj7NyufcW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xHU94vBDrMO8JpAh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KC;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KC;->A07()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    .locals 0

    .line 45762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45763
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KC;->A05:Ljava/lang/String;

    .line 45764
    iput p2, p0, Lcom/facebook/ads/redexgen/X/KC;->A01:I

    .line 45765
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/KC;->A04:Ljava/lang/Integer;

    .line 45766
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/KC;->A03:Ljava/lang/Integer;

    .line 45767
    iput p5, p0, Lcom/facebook/ads/redexgen/X/KC;->A00:F

    .line 45768
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/KC;->A06:Z

    .line 45769
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/KC;->A07:Z

    .line 45770
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/KC;->A09:Z

    .line 45771
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/KC;->A08:Z

    .line 45772
    iput p10, p0, Lcom/facebook/ads/redexgen/X/KC;->A02:I

    .line 45773
    return-void
.end method

.method public static A00(Ljava/lang/String;)F
    .locals 5

    .line 45774
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45775
    :catch_0
    move-exception v4

    .line 45776
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x47

    const/16 v1, 0x1c

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x105

    const/16 v1, 0x8

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4g;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45777
    const v0, -0x800001

    return v0
.end method

.method public static A01(Ljava/lang/String;)I
    .locals 4

    .line 45778
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 45779
    .local v0, "alignment":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/KC;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45780
    return v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45781
    :catch_0
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x81

    const/16 v1, 0x1c

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x105

    const/16 v1, 0x8

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 45782
    const/4 v0, -0x1

    return v0
.end method

.method public static A02(Ljava/lang/String;)I
    .locals 4

    .line 45783
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 45784
    .local v0, "borderStyle":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/KC;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45785
    return v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45786
    :catch_0
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x63

    const/16 v1, 0x1e

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x105

    const/16 v1, 0x8

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 45787
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A03(Ljava/lang/String;)I
    .locals 0

    .line 45788
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KC;->A01(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K8;)Lcom/facebook/ads/redexgen/X/KC;
    .locals 18

    .line 45789
    const/16 v2, 0x10d

    const/4 v1, 0x6

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 45790
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 45791
    .local v3, "styleValues":[Ljava/lang/String;
    array-length v10, v4

    move-object/from16 v5, p1

    iget v9, v5, Lcom/facebook/ads/redexgen/X/K8;->A05:I

    const/16 v3, 0x105

    const/16 v1, 0x8

    const/16 v0, 0x50

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eq v10, v9, :cond_0

    .line 45792
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A05:I

    .line 45793
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    array-length v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v5, v4, v6

    aput-object v3, v4, v7

    const/4 v0, 0x2

    aput-object v2, v4, v0

    .line 45794
    const/16 v3, 0x9d

    const/16 v2, 0x45

    const/16 v0, 0x72

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/5C;->A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45795
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 45796
    return-object v8

    .line 45797
    :cond_0
    :try_start_0
    new-instance v9, Lcom/facebook/ads/redexgen/X/KC;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A06:I

    aget-object v0, v4, v0

    .line 45798
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 45799
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A00:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 45800
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A00:I

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A01(Ljava/lang/String;)I

    move-result v11

    .line 45801
    :goto_0
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A08:I

    if-eq v0, v3, :cond_3

    .line 45802
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A08:I

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A05(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 45803
    :goto_1
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A07:I

    if-eq v0, v3, :cond_2

    .line 45804
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A07:I

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A05(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 45805
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A03:I

    if-eq v0, v3, :cond_1

    .line 45806
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A03:I

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A00(Ljava/lang/String;)F

    move-result v14

    .line 45807
    :goto_3
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A01:I

    if-eq v0, v3, :cond_5

    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A01:I

    aget-object v0, v4, v0

    .line 45808
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 45809
    :cond_1
    const v14, -0x800001

    goto :goto_3

    .line 45810
    :cond_2
    move-object v13, v8

    goto :goto_2

    .line 45811
    :cond_3
    move-object v12, v8

    goto :goto_1

    .line 45812
    :cond_4
    const/4 v11, -0x1

    goto :goto_0

    .line 45813
    :goto_4
    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A04:I

    if-eq v0, v3, :cond_6

    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A04:I

    aget-object v0, v4, v0

    .line 45814
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v16, 0x1

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A0A:I

    if-eq v0, v3, :cond_7

    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A0A:I

    aget-object v0, v4, v0

    .line 45815
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v17, 0x1

    goto :goto_7

    :cond_7
    const/16 v17, 0x0

    :goto_7
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A09:I

    if-eq v0, v3, :cond_8

    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A09:I

    aget-object v0, v4, v0

    .line 45816
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0x1

    goto :goto_8

    :cond_8
    const/16 p0, 0x0

    .line 45817
    :goto_8
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A02:I

    if-eq v0, v3, :cond_9

    .line 45818
    iget v0, v5, Lcom/facebook/ads/redexgen/X/K8;->A02:I

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KC;->A02(Ljava/lang/String;)I

    move-result p1

    .line 45819
    :goto_9
    invoke-direct/range {v9 .. v19}, Lcom/facebook/ads/redexgen/X/KC;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V

    goto :goto_a

    :cond_9
    const/16 p1, -0x1

    goto :goto_9

    .line 45820
    :goto_a
    return-object v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45821
    :catch_0
    move-exception v6

    .line 45822
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xe2

    const/16 v3, 0x23

    const/16 v0, 0x50

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v0, 0x8

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/4g;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45823
    return-object v8
.end method

.method public static A05(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9

    .line 45824
    :try_start_0
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v8, 0x10

    if-eqz v0, :cond_0

    .line 45825
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    goto :goto_0

    .line 45826
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 45827
    .local v2, "abgr":J
    :goto_0
    const-wide v1, 0xffffffffL

    cmp-long v0, v6, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45828
    const/16 v0, 0x18

    shr-long v0, v6, v0

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    xor-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/As;->A02(J)I

    move-result v3

    .line 45829
    .local v0, "a":I
    shr-long v0, v6, v8

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/As;->A02(J)I

    move-result v2

    .line 45830
    .local v1, "b":I
    const/16 v0, 0x8

    shr-long v0, v6, v0

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/As;->A02(J)I

    move-result v1

    .line 45831
    .local v4, "g":I
    and-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/facebook/ads/redexgen/X/As;->A02(J)I

    move-result v0

    .line 45832
    .local v5, "r":I
    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 45833
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "abgr":J
    .end local v4    # "g":I
    .end local v5    # "r":I
    :catch_0
    move-exception v4

    .line 45834
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x24

    const/16 v1, 0x23

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x105

    const/16 v1, 0x8

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4g;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45835
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KC;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x59

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x113

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KC;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x2ft
        0x41t
        0x76t
        0x37t
        0x12t
        0x35t
        0x3dt
        0x38t
        0x31t
        0x30t
        0x74t
        0x20t
        0x3bt
        0x74t
        0x24t
        0x35t
        0x26t
        0x27t
        0x31t
        0x74t
        0x36t
        0x3bt
        0x3bt
        0x38t
        0x31t
        0x35t
        0x3at
        0x74t
        0x22t
        0x35t
        0x38t
        0x21t
        0x31t
        0x6et
        0x74t
        0x73t
        0x26t
        0x1t
        0x9t
        0xct
        0x5t
        0x4t
        0x40t
        0x14t
        0xft
        0x40t
        0x10t
        0x1t
        0x12t
        0x13t
        0x5t
        0x40t
        0x3t
        0xft
        0xct
        0xft
        0x12t
        0x40t
        0x5t
        0x18t
        0x10t
        0x12t
        0x5t
        0x13t
        0x13t
        0x9t
        0xft
        0xet
        0x5at
        0x40t
        0x47t
        0x65t
        0x42t
        0x4at
        0x4ft
        0x46t
        0x47t
        0x3t
        0x57t
        0x4ct
        0x3t
        0x53t
        0x42t
        0x51t
        0x50t
        0x46t
        0x3t
        0x45t
        0x4ct
        0x4dt
        0x57t
        0x3t
        0x50t
        0x4at
        0x59t
        0x46t
        0x19t
        0x3t
        0x4t
        0x4dt
        0x63t
        0x6at
        0x6bt
        0x76t
        0x6dt
        0x6at
        0x63t
        0x24t
        0x71t
        0x6at
        0x6ft
        0x6at
        0x6bt
        0x73t
        0x6at
        0x24t
        0x46t
        0x6bt
        0x76t
        0x60t
        0x61t
        0x76t
        0x57t
        0x70t
        0x7dt
        0x68t
        0x61t
        0x3et
        0x24t
        0x64t
        0x4at
        0x43t
        0x42t
        0x5ft
        0x44t
        0x43t
        0x4at
        0xdt
        0x58t
        0x43t
        0x46t
        0x43t
        0x42t
        0x5at
        0x43t
        0xdt
        0x4ct
        0x41t
        0x44t
        0x4at
        0x43t
        0x40t
        0x48t
        0x43t
        0x59t
        0x17t
        0xdt
        0x78t
        0x40t
        0x42t
        0x5bt
        0x5bt
        0x42t
        0x45t
        0x4ct
        0xbt
        0x46t
        0x4at
        0x47t
        0x4dt
        0x44t
        0x59t
        0x46t
        0x4et
        0x4ft
        0xbt
        0xct
        0x78t
        0x5ft
        0x52t
        0x47t
        0x4et
        0x11t
        0xct
        0xbt
        0x47t
        0x42t
        0x45t
        0x4et
        0xbt
        0x3t
        0x4et
        0x53t
        0x5bt
        0x4et
        0x48t
        0x5ft
        0x4et
        0x4ft
        0xbt
        0xet
        0x58t
        0xbt
        0x5dt
        0x4at
        0x47t
        0x5et
        0x4et
        0x58t
        0x7t
        0xbt
        0x4dt
        0x44t
        0x5et
        0x45t
        0x4ft
        0xbt
        0xet
        0x58t
        0x2t
        0x11t
        0xbt
        0xct
        0xet
        0x58t
        0xct
        0x5at
        0x62t
        0x60t
        0x79t
        0x79t
        0x60t
        0x67t
        0x6et
        0x29t
        0x64t
        0x68t
        0x65t
        0x6ft
        0x66t
        0x7bt
        0x64t
        0x6ct
        0x6dt
        0x29t
        0x2et
        0x5at
        0x7dt
        0x70t
        0x65t
        0x6ct
        0x33t
        0x2et
        0x29t
        0x65t
        0x60t
        0x67t
        0x6ct
        0x33t
        0x29t
        0x2et
        0x5at
        0x7at
        0x68t
        0x5at
        0x7dt
        0x70t
        0x65t
        0x6ct
        0x38t
        0x1ft
        0x12t
        0x7t
        0xet
        0x51t
    .end array-data
.end method

.method public static A08(I)Z
    .locals 0

    .line 45836
    packed-switch p0, :pswitch_data_0

    .line 45837
    const/4 p0, 0x0

    return p0

    .line 45838
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A09(I)Z
    .locals 3

    .line 45839
    packed-switch p0, :pswitch_data_0

    .line 45840
    :pswitch_0
    const/4 p0, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/KC;->A0B:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KC;->A0B:[Ljava/lang/String;

    const-string v1, "OxYydzu443viAUiIiorbVSFSlAhvbuco"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return p0

    .line 45841
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static A0A(Ljava/lang/String;)Z
    .locals 6

    .line 45842
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 45843
    .local v1, "value":I
    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    return v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45844
    .end local v1    # "value":I
    :catch_0
    move-exception v4

    .line 45845
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/16 v1, 0x20

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x105

    const/16 v1, 0x8

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KC;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4g;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45846
    return v5
.end method
