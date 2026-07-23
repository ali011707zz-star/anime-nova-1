.class public abstract Lcom/facebook/ads/redexgen/X/BO;
.super Lcom/facebook/ads/redexgen/X/oO;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSet$Builder;,
        Lcom/google/common/collect/ImmutableSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/oO<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static A01:[B = null

.field public static A02:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = 0xdecafL


# instance fields
.field public transient A00:Lcom/facebook/ads/redexgen/X/BP;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 658
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tpMJzZrhhsrMkwhOFEYR9GbFlaKVIskH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YlBA8T7Fro2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "USXGP8OuBAzNSq5CbRyfQ0SKNWZdvns1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IwkjEd2x85ogj6Hkpqc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vhSxYEQIRpWfy1n6I2fIJfhoZxh6fLOY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PMh9AUA5ndLdUxX8KVZJ5S1GU2oeFGKJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nfsou9g6KKUnvuudu0UQjvY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "janJ9NtfQ2imEKBo1ypA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BO;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BO;->A0C()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30383
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oO;-><init>()V

    return-void
.end method

.method public static A03(I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setSize"
        }
    .end annotation

    .line 30384
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 30385
    const v0, 0x2ccccccc

    const/4 v4, 0x1

    if-ge p0, v0, :cond_1

    .line 30386
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    shl-int/2addr v5, v4

    .line 30387
    .local v0, "tableSize":I
    :goto_0
    int-to-double v3, v5

    const-wide v0, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v3, v0

    int-to-double v1, p0

    cmpg-double v0, v3, v1

    if-gez v0, :cond_0

    .line 30388
    shl-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 30389
    :cond_0
    return v5

    .line 30390
    .end local v0    # "tableSize":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-ge p0, v3, :cond_2

    :goto_1
    const/16 v2, 0x12

    const/16 v1, 0x14

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BO;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/ki;->A0E(ZLjava/lang/Object;)V

    .line 30391
    return v3

    .line 30392
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static varargs A04(I[Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TE;>;"
        }
    .end annotation

    .line 30393
    move-object/from16 v10, p1

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_0

    .line 30394
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/BO;->A03(I)I

    move-result v3

    .line 30395
    .local v1, "tableSize":I
    new-array v12, v3, [Ljava/lang/Object;

    .line 30396
    .local v8, "table":[Ljava/lang/Object;
    add-int/lit8 v13, v3, -0x1

    .line 30397
    .local v9, "mask":I
    const/4 v11, 0x0

    .line 30398
    .local v2, "hashCode":I
    const/4 v14, 0x0

    .line 30399
    .local v3, "uniques":I
    const/4 v5, 0x0

    .local v4, "i":I
    .restart local v1    # "tableSize":I
    .restart local v4    # "i":I
    .restart local v8    # "table":[Ljava/lang/Object;
    .restart local v9    # "mask":I
    .local v10, "hashCode":I
    .local v11, "uniques":I
    :goto_0
    if-ge v5, p0, :cond_2

    .line 30400
    aget-object v0, v10, v5

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/qG;->A00(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 30401
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 30402
    .local v3, "hash":I
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/oI;->A00(I)I

    move-result v1

    .line 30403
    .local v5, "j":I
    :goto_1
    and-int v7, v1, v13

    .line 30404
    .local v6, "index":I
    aget-object v0, v12, v7

    .line 30405
    .local v7, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 30406
    add-int/lit8 v6, v14, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/BO;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_6

    .end local v11    # "uniques":I
    .local v12, "uniques":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/BO;->A02:[Ljava/lang/String;

    const-string v1, "Zw143axrDatzvvuiLOoxXPNJBQDLOllI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "imRh362HWPXwfaqxgHfljoqeqcFI5Kex"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-object v4, v10, v14

    .line 30407
    aput-object v4, v12, v7

    .line 30408
    add-int/2addr v11, v8

    .line 30409
    move v14, v6

    .line 30410
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "hash":I
    .end local v5    # "j":I
    .end local v6    # "index":I
    .end local v7    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 30411
    .end local v12    # "uniques":I
    .restart local v11    # "uniques":I
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 30412
    .restart local v2    # "element":Ljava/lang/Object;
    .restart local v3    # "hash":I
    .restart local v5    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30413
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "hash":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_2
    const/4 v0, 0x0

    invoke-static {v10, v14, p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 30414
    const/4 v0, 0x1

    if-ne v14, v0, :cond_3

    .line 30415
    aget-object v0, v10, v9

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30416
    .local v0, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/25;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/25;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 30417
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_3
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/BO;->A03(I)I

    move-result v1

    div-int/lit8 v0, v3, 0x2

    if-ge v1, v0, :cond_4

    .line 30418
    invoke-static {v14, v10}, Lcom/facebook/ads/redexgen/X/BO;->A04(I[Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    return-object v0

    .line 30419
    :cond_4
    array-length v0, v10

    invoke-static {v14, v0}, Lcom/facebook/ads/redexgen/X/BO;->A0D(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    .line 30420
    .local v3, "uniqueElements":[Ljava/lang/Object;
    :cond_5
    new-instance v9, Lcom/facebook/ads/redexgen/X/29;

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/29;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object v9

    .line 30421
    .end local v1    # "tableSize":I
    .end local v2
    .end local v3    # "uniqueElements":[Ljava/lang/Object;
    .end local v4
    .end local v8    # "table":[Ljava/lang/Object;
    .end local v9    # "mask":I
    :pswitch_0
    aget-object v0, v10, v9

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30422
    .local v0, "elem":Ljava/lang/Object;, "TE;"
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BO;->A0A(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/25;

    move-result-object v0

    return-object v0

    .line 30423
    .end local v0    # "elem":Ljava/lang/Object;, "TE;"
    :pswitch_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BO;->A09()Lcom/facebook/ads/redexgen/X/29;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/BO;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/BO;->A02:[Ljava/lang/String;

    const-string v1, "xMSzqHeYX9fl0z6G3xaNHOB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A05(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TE;>;"
        }
    .end annotation

    .line 30424
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/BO;->A04(I[Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "e3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TE;>;"
        }
    .end annotation

    .line 30425
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    aput-object p2, v1, v0

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/BO;->A04(I[Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    return-object v0
.end method

.method public static A07(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/BO;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TE;>;"
        }
    .end annotation

    .line 30426
    .local v2, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/BO;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 30427
    move-object v1, p0

    check-cast v1, Lcom/facebook/ads/redexgen/X/BO;

    .line 30428
    .local v0, "set":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/oO;->A0K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30429
    return-object v1

    .line 30430
    .end local v0    # "set":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 30431
    .local v0, "array":[Ljava/lang/Object;
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/BO;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BO;->A02:[Ljava/lang/String;

    const-string v1, "vJyPhnBCGNruVJXdAMH0mrO2J76B9Swt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3, p0}, Lcom/facebook/ads/redexgen/X/BO;->A04(I[Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TE;>;"
        }
    .end annotation

    .line 30432
    .local v2, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 30433
    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BO;->A04(I[Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BO;

    move-result-object v0

    return-object v0

    .line 30434
    :pswitch_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BO;->A0A(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/25;

    move-result-object p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/BO;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/BO;->A02:[Ljava/lang/String;

    const-string v1, "14gyZ0VPjhYiFYlwFK2N"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 30435
    :pswitch_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BO;->A09()Lcom/facebook/ads/redexgen/X/29;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A09()Lcom/facebook/ads/redexgen/X/29;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TE;>;"
        }
    .end annotation

    .line 30436
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    return-object v0
.end method

.method public static A0A(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/25;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/facebook/ads/redexgen/X/BO<",
            "TE;>;"
        }
    .end annotation

    .line 30437
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/25;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/25;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/BO;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0C()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BO;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x37t
        -0x19t
        -0x27t
        -0x6ct
        -0x39t
        -0x27t
        -0x1at
        -0x23t
        -0x2bt
        -0x20t
        -0x23t
        -0x12t
        -0x27t
        -0x28t
        -0x46t
        -0x1dt
        -0x1at
        -0x1ft
        -0x43t
        -0x37t
        -0x3at
        -0x3at
        -0x41t
        -0x43t
        -0x32t
        -0x3dt
        -0x37t
        -0x38t
        0x7at
        -0x32t
        -0x37t
        -0x37t
        0x7at
        -0x3at
        -0x45t
        -0x34t
        -0x3ft
        -0x41t
    .end array-data
.end method

.method public static A0D(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actualUnique",
            "expectedUnique"
        }
    .end annotation

    .line 30438
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v0, p1, 0x2

    add-int/2addr v1, v0

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 30452
    .local v2, "this":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BO;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A0J()Lcom/facebook/ads/redexgen/X/BP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TE;>;"
        }
    .end annotation

    .line 30439
    .local p1, "this":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:Lcom/facebook/ads/redexgen/X/BP;

    .line 30440
    .local v0, "result":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BO;->A0M()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:Lcom/facebook/ads/redexgen/X/BP;

    :cond_0
    return-object v0
.end method

.method public A0M()Lcom/facebook/ads/redexgen/X/BP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "TE;>;"
        }
    .end annotation

    .line 30441
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oO;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BP;->A06([Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0N()Lcom/facebook/ads/redexgen/X/4C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/4C<",
            "TE;>;"
        }
    .end annotation
.end method

.method public A0O()Z
    .locals 1

    .line 30442
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 30443
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    if-ne p1, p0, :cond_0

    .line 30444
    const/4 v0, 0x1

    return v0

    .line 30445
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/BO;

    if-eqz v0, :cond_1

    .line 30446
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BO;->A0O()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/BO;

    .line 30447
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BO;->A0O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30448
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BO;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 30449
    const/4 v0, 0x0

    return v0

    .line 30450
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/qj;->A09(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 30451
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BO;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/qj;->A00(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
