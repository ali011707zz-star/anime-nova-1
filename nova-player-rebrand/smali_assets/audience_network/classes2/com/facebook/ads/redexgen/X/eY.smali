.class public final Lcom/facebook/ads/redexgen/X/eY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FO;->A05(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/FB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FO;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2755
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6oymiTsLeOB6akVZhYZlzt9u0lzod266"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zcFrhgW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pA0IIkGKiekAr0fjB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "y6hjg8mxqAalWUMcxQuHYQOItnPT39hG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7U0TsM6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Tg7m67O8vHVp5z623KOmUlfZNUrkO0e2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eZwTRoaquQnWH3ejc5rSlBlQZkiVI59b"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AT7ca5j6uH8ZMFY8gdhWcohA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/eY;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/eY;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81676
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eY;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/eY;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x34

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/eY;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/eY;->A02:[Ljava/lang/String;

    const-string v1, "b4q8hXeVYJWgCCKNMDRDzuby"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "dEe326h"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/eY;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x16t
        0x1ft
        0x15t
        0x14t
        0x12t
        0x23t
        0x15t
        0x24t
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 81677
    .local v0, "this":Lcom/facebook/ads/redexgen/X/eY;
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/eY;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A04(Lcom/facebook/ads/redexgen/X/FO;)Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81678
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/eY;->A00:Lcom/facebook/ads/redexgen/X/FO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FO;->A04(Lcom/facebook/ads/redexgen/X/FO;)Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eY;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 81679
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/eY;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/eY;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/eY;->A02:[Ljava/lang/String;

    const-string v1, "NoOvb1ER3rIaV6vkspGGWoVzXAP3qQ3Z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
