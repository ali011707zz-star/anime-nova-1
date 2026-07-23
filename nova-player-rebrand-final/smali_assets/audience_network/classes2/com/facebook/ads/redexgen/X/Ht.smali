.class public final Lcom/facebook/ads/redexgen/X/Ht;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5F;->A0f(Lcom/facebook/ads/redexgen/X/4A;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5F;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/4A;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 801
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eWADjtxb1dWvMuQKHnw5jLkRYtYeIVb9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vJlKnMrqllT8yqHy3c09kMgmhRavVIVM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Q4u15erxw2VvJfagpGA99x6fik"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DcfdvxQ7qaScGwoUH6bgcK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LZ3ab3PJnMGJQ4QsgAhwpTw2XWco3njm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qn1MQsBbREXEZXLMbJl8WtK7V5qupI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZrYMyBGTS8dZg7uAD2wVIzoUAJYVhikw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ht;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ht;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5F;Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 39994
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ht;->A00:Lcom/facebook/ads/redexgen/X/5F;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ht;->A01:Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ht;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ht;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ht;->A03:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "KjbCoXJ8ChyqWCUKbe1FzcklJu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x21

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ht;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ht;->A03:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "FepnQiYEGf6Y70BjqDmgAXMgjY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

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

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ht;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x68t
        0x7bt
        0x7bt
        0x78t
        0x6ft
        0x74t
        0x73t
        0x7at
        0x3dt
        0x74t
        0x73t
        0x79t
        0x78t
        0x7bt
        0x74t
        0x73t
        0x74t
        0x69t
        0x78t
        0x71t
        0x64t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 39995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0J(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A02:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A00:Lcom/facebook/ads/redexgen/X/5F;

    .line 39996
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0J(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A01:Lcom/facebook/ads/redexgen/X/4A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EB;->A00()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 39997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A00:Lcom/facebook/ads/redexgen/X/5F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5F;->A0I(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/dm;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v3, 0x16

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ht;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ht;->A03:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "farTWgnk5frdrEZBsMmfrvdmtZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x3c

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Ht;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/dm;->AGQ(Ljava/lang/String;)V

    .line 39998
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
