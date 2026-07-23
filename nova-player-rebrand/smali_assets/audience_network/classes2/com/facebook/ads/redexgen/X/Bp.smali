.class public final Lcom/facebook/ads/redexgen/X/Bp;
.super Lcom/facebook/ads/redexgen/X/qK;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/qK<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final serialVersionUID:J


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/kO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/kO<",
            "TF;+TT;>;"
        }
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/qK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/qK<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 668
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qP7uN3CTeBtugcvn4iscvs4NawNVw3hj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uACvKKD4Xh814PQzJz7fno8Y0d2htzTr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OaGwUL0wruZXrmXuBUYR8eOdlsWVX5jO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JY9GX7tPgJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UJNVJd39Mn7RrVqRZr4HQjubetYZ2pJj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tP9Bx5HW1SG5GbSCFf4kAQmgB2SyEv9b"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xcsG1NfXHnFrLoKWAotfCT6bqQ3ToZXO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wDWfKnr2Hnyq67FaxNzVQD5A0FwwfXbW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bp;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bp;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/kO;Lcom/facebook/ads/redexgen/X/qK;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "function",
            "ordering"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/kO<",
            "TF;+TT;>;",
            "Lcom/facebook/ads/redexgen/X/qK<",
            "TT;>;)V"
        }
    .end annotation

    .line 31189
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bp;, "Lcom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    .local p1, "function":Lcom/facebook/ads/redexgen/X/kO;, "Lcom/google/common/base/Function<TF;+TT;>;"
    .local p2, "ordering":Lcom/facebook/ads/redexgen/X/qK;, "Lcom/google/common/collect/Ordering<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/qK;-><init>()V

    .line 31190
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/kO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bp;->A00:Lcom/facebook/ads/redexgen/X/kO;

    .line 31191
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bp;->A01:Lcom/facebook/ads/redexgen/X/qK;

    .line 31192
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bp;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bp;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bp;->A03:[Ljava/lang/String;

    const-string v1, "UOsr4mSSP3XVk2xA78tBNfMlPB0RSTkt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Bp;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x7at
        0x3bt
        0x3at
        0x6t
        0x31t
        0x27t
        0x21t
        0x38t
        0x20t
        0x1bt
        0x32t
        0x7ct
    .end array-data
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .line 31193
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bp;, "Lcom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TF;"
    .local p2, "right":Ljava/lang/Object;, "TF;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bp;->A01:Lcom/facebook/ads/redexgen/X/qK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bp;->A00:Lcom/facebook/ads/redexgen/X/kO;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/kO;->A4B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bp;->A00:Lcom/facebook/ads/redexgen/X/kO;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/kO;->A4B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qK;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
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

    .line 31194
    .local p2, "this":Lcom/facebook/ads/redexgen/X/Bp;, "Lcom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    const/4 v2, 0x1

    if-ne p1, p0, :cond_0

    .line 31195
    return v2

    .line 31196
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/Bp;

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 31197
    check-cast p1, Lcom/facebook/ads/redexgen/X/Bp;

    .line 31198
    .local v1, "that":Lcom/facebook/ads/redexgen/X/Bp;, "Lcom/google/common/collect/ByFunctionOrdering<**>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bp;->A00:Lcom/facebook/ads/redexgen/X/kO;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Bp;->A00:Lcom/facebook/ads/redexgen/X/kO;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bp;->A01:Lcom/facebook/ads/redexgen/X/qK;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Bp;->A01:Lcom/facebook/ads/redexgen/X/qK;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 31199
    .end local v1    # "that":Lcom/facebook/ads/redexgen/X/Bp;, "Lcom/google/common/collect/ByFunctionOrdering<**>;"
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 31200
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bp;, "Lcom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Bp;->A00:Lcom/facebook/ads/redexgen/X/kO;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bp;->A01:Lcom/facebook/ads/redexgen/X/qK;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v1, v0

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/CB;->A00([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 31201
    .local v2, "this":Lcom/facebook/ads/redexgen/X/Bp;, "Lcom/google/common/collect/ByFunctionOrdering<TF;TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bp;->A01:Lcom/facebook/ads/redexgen/X/qK;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0xc

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bp;->A00:Lcom/facebook/ads/redexgen/X/kO;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
