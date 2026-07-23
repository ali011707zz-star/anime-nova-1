.class public final Lcom/facebook/ads/redexgen/X/Gc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Rk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4x;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 752
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EbGpmssVJ7ns5QL3Rl3UMQ1bkFVQ99jJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NZiaRg2dkcqShBYEYgfcfS6cvloj595L"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "orBeTHrcfmlzSHmkgrBC5PhD7dWIdW6R"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "A0QUoJlw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r5xapKwo2g0pU1r2itXQ9K5SrPer64wf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XFka6Ze1I6IepT0r6LvaraMv7MRENHMC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Xj0im9L41l0kDU7dj2M6tiOB0nkMWcds"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VCdvqSH1BrwZZsOdC7BZghv3f2EYDVkv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gc;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37185
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gc;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAI()Z
    .locals 4

    .line 37186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gc;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4x;->A04(Lcom/facebook/ads/redexgen/X/4x;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gc;->A00:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A0l()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gc;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gc;->A01:[Ljava/lang/String;

    const-string v1, "O5SuZCLVdBOcw9avK46kWbT1hYIehzyg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
