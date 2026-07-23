.class public final Lcom/facebook/ads/redexgen/X/B2;
.super Lcom/facebook/ads/redexgen/X/qK;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/qK<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final serialVersionUID:J


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/qK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/qK<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 647
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TYphIuCeMUBPtejfiFOUwjFxcT4QBTq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8HYxpO9zw1uGMW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bftleM0W"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QbbbyMJUXm1d4Xd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2naIPdaT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "exbXjeCkSw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "w"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Nm7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/B2;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/B2;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/qK;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forwardOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/qK<",
            "-TT;>;)V"
        }
    .end annotation

    .line 29552
    .local p0, "this":Lcom/facebook/ads/redexgen/X/B2;, "Lcom/google/common/collect/ReverseOrdering<TT;>;"
    .local p1, "forwardOrder":Lcom/facebook/ads/redexgen/X/qK;, "Lcom/google/common/collect/Ordering<-TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/qK;-><init>()V

    .line 29553
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qK;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Lcom/facebook/ads/redexgen/X/qK;

    .line 29554
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/B2;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/B2;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        0x26t
        0x19t
        0x2at
        0x19t
        0x26t
        0x27t
        0x19t
        -0x24t
        -0x23t
    .end array-data
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/qK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/facebook/ads/redexgen/X/qK<",
            "TS;>;"
        }
    .end annotation

    .line 29555
    .local p0, "this":Lcom/facebook/ads/redexgen/X/B2;, "Lcom/google/common/collect/ReverseOrdering<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Lcom/facebook/ads/redexgen/X/qK;

    return-object v0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
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
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 29556
    .local p0, "this":Lcom/facebook/ads/redexgen/X/B2;, "Lcom/google/common/collect/ReverseOrdering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Lcom/facebook/ads/redexgen/X/qK;

    invoke-virtual {v0, p2, p1}, Lcom/facebook/ads/redexgen/X/qK;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
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

    .line 29557
    .local v3, "this":Lcom/facebook/ads/redexgen/X/B2;, "Lcom/google/common/collect/ReverseOrdering<TT;>;"
    if-ne p1, p0, :cond_1

    .line 29558
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/B2;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/B2;->A02:[Ljava/lang/String;

    const-string v1, "3jzErf5H"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "YYoE6Ooa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    .line 29559
    :cond_1
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/B2;

    if-eqz v0, :cond_2

    .line 29560
    check-cast p1, Lcom/facebook/ads/redexgen/X/B2;

    .line 29561
    .local v0, "that":Lcom/facebook/ads/redexgen/X/B2;, "Lcom/google/common/collect/ReverseOrdering<*>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Lcom/facebook/ads/redexgen/X/qK;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/B2;->A00:Lcom/facebook/ads/redexgen/X/qK;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 29562
    .end local v0    # "that":Lcom/facebook/ads/redexgen/X/B2;, "Lcom/google/common/collect/ReverseOrdering<*>;"
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 29563
    .local p0, "this":Lcom/facebook/ads/redexgen/X/B2;, "Lcom/google/common/collect/ReverseOrdering<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Lcom/facebook/ads/redexgen/X/qK;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 29564
    .local v2, "this":Lcom/facebook/ads/redexgen/X/B2;, "Lcom/google/common/collect/ReverseOrdering<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/B2;->A00:Lcom/facebook/ads/redexgen/X/qK;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B2;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
