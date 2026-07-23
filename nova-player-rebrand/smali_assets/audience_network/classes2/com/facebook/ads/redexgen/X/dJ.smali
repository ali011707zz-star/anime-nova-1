.class public final Lcom/facebook/ads/redexgen/X/dJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/dH;,
        Lcom/facebook/ads/redexgen/X/Is;,
        Lcom/facebook/ads/redexgen/X/dI;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/dC;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Is;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/gi;

.field public final A04:Lcom/facebook/ads/redexgen/X/cz;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/VA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2710
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wHWy6mJnObE4TdegwzR1XIqaiMp2qzo2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2kKTv183xGQoCJ4bH8MOQBKEcrYPubr8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yAnU2m0QEWVpmJNiipOenY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2CWVvRtjqdC7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Y1Dj6sRIbzGHXk3FXnyOisKccxY5ExT7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AAUb4pYdx4XqEM8CotKihUFr9wNvuug2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KLTFv3N2v474XPM9CBPbC4npqkPjZQN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uonDorlDhYGoL6YzDZYQroxkAXvFfbHU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/dJ;->A09()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/dC;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/cz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 79893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79894
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dJ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    .line 79895
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A00:Ljava/lang/ref/WeakReference;

    .line 79896
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    .line 79897
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A07:Ljava/lang/ref/WeakReference;

    .line 79898
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/dJ;->A04:Lcom/facebook/ads/redexgen/X/cz;

    .line 79899
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/dJ;->A05:Ljava/lang/String;

    .line 79900
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/dJ;->A06:Ljava/lang/String;

    .line 79901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A02:Z

    .line 79902
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/dJ;)Lcom/facebook/ads/redexgen/X/cz;
    .locals 0

    .line 79903
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A04:Lcom/facebook/ads/redexgen/X/cz;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/dJ;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xc

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/dJ;)Ljava/lang/String;
    .locals 0

    .line 79904
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static A03(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79905
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 79906
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79907
    .local v1, "extraDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79908
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79909
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79910
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 79911
    :cond_0
    return-object v2
.end method

.method private A04()V
    .locals 3

    .line 79912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Is;

    .line 79913
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/Is;
    if-nez v0, :cond_0

    .line 79914
    return-void

    .line 79915
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Is;->close()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    .line 79916
    sget-object v2, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const-string v1, "rLuDNCDiUJCt8jrcDw8nHa"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "w5dFeIXZRXYPRcNf7kYaeIakMq27def"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()V
    .locals 1

    .line 79917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Is;

    .line 79918
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/Is;
    if-nez v0, :cond_0

    .line 79919
    return-void

    .line 79920
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Is;->A9k()V

    .line 79921
    return-void
.end method

.method private A06()V
    .locals 1

    .line 79922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Is;

    .line 79923
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/Is;
    if-nez v0, :cond_0

    .line 79924
    return-void

    .line 79925
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Is;->AAm()V

    .line 79926
    return-void
.end method

.method private A07()V
    .locals 1

    .line 79927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A64()V

    .line 79928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A02:Z

    .line 79929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Is;

    .line 79930
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/Is;
    if-nez v0, :cond_0

    .line 79931
    return-void

    .line 79932
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Is;->AKD()V

    .line 79933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VM;->ADb()V

    .line 79935
    :cond_1
    return-void
.end method

.method private A08()V
    .locals 1

    .line 79936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Is;

    .line 79937
    .local v0, "uxActionsJavascriptListener":Lcom/facebook/ads/redexgen/X/Is;
    if-nez v0, :cond_0

    .line 79938
    return-void

    .line 79939
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Is;->AE0()V

    .line 79940
    return-void
.end method

.method public static A09()V
    .locals 4

    const/16 v0, 0x67

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const-string v1, "q8I1zS5uUBp9u7UYsB3eM38aYjAC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/dJ;->A08:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x79t
        -0x6dt
        -0x6ft
        -0x6ft
        -0x7bt
        -0x6et
        -0x78t
        -0x6et
        -0x6dt
        -0x6ct
        -0x71t
        -0x5dt
        -0x66t
        -0x5et
        0x70t
        0x7ft
        0x78t
        0x6bt
        -0x5dt
        -0x4et
        -0x55t
        -0x55t
        -0x5et
        -0x57t
        -0x64t
        -0x60t
        -0x54t
        -0x5ft
        -0x5et
        -0x56t
        -0x47t
        -0x4et
        -0x4et
        -0x57t
        -0x50t
        -0x5dt
        -0x4ft
        -0x57t
        -0x49t
        -0x49t
        -0x5bt
        -0x55t
        -0x57t
        -0xft
        0x0t
        -0x7t
        -0x7t
        -0x10t
        -0x9t
        -0x16t
        -0x1t
        0x4t
        -0x5t
        -0x10t
        -0x12t
        -0x18t
        -0x4t
        -0x38t
        -0x37t
        -0x48t
        -0x3et
        -0x43t
        -0x7ft
        0x72t
        -0x7at
        -0x7ct
        0x76t
        0x75t
        0x53t
        -0x76t
        0x66t
        -0x7ct
        0x76t
        -0x7dt
        -0x1ft
        -0x1et
        -0x31t
        -0x20t
        -0x1et
        -0x2dt
        -0x2et
        -0x50t
        -0x19t
        -0x3dt
        -0x1ft
        -0x2dt
        -0x20t
        -0xet
        -0xdt
        -0x20t
        -0xdt
        -0x1ct
        -0x27t
        -0x2at
        -0x30t
        -0x51t
        -0x37t
        -0x23t
        -0x54t
        -0x69t
        -0x5et
        -0x55t
        -0x65t
    .end array-data
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/dC;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79941
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79942
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WN;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 79943
    .local v1, "sp":Landroid/content/SharedPreferences;
    const/16 v2, 0x39

    const/4 v1, 0x5

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79944
    .local v2, "opId":Ljava/lang/String;
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x7

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79945
    .local v4, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/4 v1, 0x4

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79946
    .local v5, "storageValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v6, v0

    :cond_0
    invoke-virtual {p1, v5, v6}, Lcom/facebook/ads/redexgen/X/dC;->A0g(Ljava/lang/String;Ljava/lang/String;)V

    .line 79947
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/dC;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79948
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79949
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x62

    const/4 v1, 0x5

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79950
    .local v1, "value":Ljava/lang/String;
    const/16 v2, 0x39

    const/4 v1, 0x5

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79951
    .local v2, "opId":Ljava/lang/String;
    const/16 v2, 0x36

    const/4 v1, 0x3

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x7

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79952
    .local v3, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WN;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79953
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/4 v1, 0x4

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79954
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/dC;->A0f(Ljava/lang/String;)V

    .line 79955
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/dH;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79956
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/dH;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79957
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/dC;

    .line 79958
    .local v0, "webViewController":Lcom/facebook/ads/redexgen/X/dC;
    if-nez v1, :cond_1

    .line 79959
    return-void

    .line 79960
    :pswitch_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A0M(Lorg/json/JSONObject;)V

    .line 79961
    goto :goto_0

    .line 79962
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dJ;->A08()V

    .line 79963
    goto :goto_0

    .line 79964
    :pswitch_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A0J(Lorg/json/JSONObject;)V

    .line 79965
    goto :goto_0

    .line 79966
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/dJ;->A0D(Lcom/facebook/ads/redexgen/X/dH;Ljava/lang/String;)V

    .line 79967
    goto :goto_0

    .line 79968
    :pswitch_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dJ;->A05()V

    .line 79969
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/Lt;->A6G(Ljava/lang/String;)V

    .line 79970
    goto :goto_0

    .line 79971
    :pswitch_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A0L(Lorg/json/JSONObject;)V

    .line 79972
    goto :goto_0

    .line 79973
    :pswitch_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A0K(Lorg/json/JSONObject;)V

    .line 79974
    goto :goto_0

    .line 79975
    :pswitch_9
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79976
    :pswitch_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dJ;->A07()V

    .line 79977
    goto :goto_0

    .line 79978
    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dJ;->A04()V

    .line 79979
    goto :goto_0

    .line 79980
    :pswitch_c
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dJ;->A06()V

    .line 79981
    goto :goto_0

    .line 79982
    :pswitch_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A0I(Lorg/json/JSONObject;)V

    .line 79983
    goto :goto_0

    .line 79984
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/dH;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 79985
    :goto_1
    return-void

    .line 79986
    :sswitch_0
    invoke-direct {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/dJ;->A0A(Lcom/facebook/ads/redexgen/X/dC;Ljava/lang/String;)V

    .line 79987
    goto :goto_1

    .line 79988
    :sswitch_1
    invoke-direct {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/dJ;->A0B(Lcom/facebook/ads/redexgen/X/dC;Ljava/lang/String;)V

    .line 79989
    goto :goto_1

    .line 79990
    :sswitch_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/dJ;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dC;->A0i(Ljava/util/Map;)V

    goto :goto_1

    .line 79991
    :sswitch_3
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dC;->A0R()V

    .line 79992
    goto :goto_1

    .line 79993
    :sswitch_4
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dC;->A0S()V

    .line 79994
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x6 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/dH;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Is;

    .line 79996
    .local v0, "uxActionsJavascriptListener":Lcom/facebook/ads/redexgen/X/Is;
    if-nez v1, :cond_0

    .line 79997
    return-void

    .line 79998
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/dH;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79999
    :goto_0
    return-void

    .line 80000
    :pswitch_0
    invoke-direct {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/dJ;->A0F(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;)V

    .line 80001
    goto :goto_0

    .line 80002
    :pswitch_1
    invoke-direct {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/dJ;->A0G(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;)V

    .line 80003
    goto :goto_0

    .line 80004
    :pswitch_2
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Is;->AFz()V

    .line 80005
    goto :goto_0

    .line 80006
    :pswitch_3
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Is;->AE4()V

    .line 80007
    goto :goto_0

    .line 80008
    :pswitch_4
    invoke-direct {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/dJ;->A0E(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80009
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80010
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x57

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 80011
    .local v1, "STATE_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 80012
    .local v2, "state":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Is;->AEu(Z)V

    .line 80013
    return-void
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80014
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80015
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x3e

    const/16 v1, 0xc

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 80016
    .local v1, "PAUSED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 80017
    .local v2, "pausedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Is;->AGX(Z)V

    .line 80018
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80019
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80020
    .local v0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x4a

    const/16 v1, 0xd

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 80021
    .local v1, "STARTED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 80022
    .local v2, "startedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Is;->AGZ(Z)V

    .line 80023
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/dJ;Lcom/facebook/ads/redexgen/X/dH;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80024
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/dJ;->A0C(Lcom/facebook/ads/redexgen/X/dH;Ljava/lang/String;)V

    return-void
.end method

.method private A0I(Lorg/json/JSONObject;)V
    .locals 4

    .line 80025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Is;

    .line 80026
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/Is;
    if-nez v3, :cond_0

    .line 80027
    return-void

    .line 80028
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80029
    .local v1, "productUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80030
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Is;->A9f()V

    .line 80031
    :goto_0
    return-void

    .line 80032
    :cond_1
    invoke-interface {v3, v1}, Lcom/facebook/ads/redexgen/X/Is;->A9g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A0J(Lorg/json/JSONObject;)V
    .locals 3

    .line 80033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Is;

    .line 80034
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/Is;
    if-nez v0, :cond_0

    .line 80035
    return-void

    .line 80036
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 80037
    .local v1, "action":Ljava/lang/String;
    return-void
.end method

.method private A0K(Lorg/json/JSONObject;)V
    .locals 5

    .line 80038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/VA;

    .line 80039
    .local v0, "adEventManager":Lcom/facebook/ads/redexgen/X/VA;
    if-nez v3, :cond_0

    .line 80040
    return-void

    .line 80041
    :cond_0
    const/16 v4, 0x2b

    sget-object v1, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const-string v1, "hDImTkFK3KoL7AYoPxXIP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v1, 0xb

    const/16 v0, 0x7f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80042
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80043
    return-void

    .line 80044
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A06:Ljava/lang/String;

    new-instance v2, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 80045
    .local v2, "handler":Lcom/facebook/ads/redexgen/X/VI;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/dJ;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A05(Ljava/lang/String;Ljava/util/Map;)V

    .line 80046
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0L(Lorg/json/JSONObject;)V
    .locals 4

    .line 80047
    const/16 v2, 0x12

    const/16 v1, 0xb

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 80048
    .local v0, "code":I
    if-ne v3, v0, :cond_0

    .line 80049
    return-void

    .line 80050
    :cond_0
    const/16 v2, 0x1d

    const/16 v1, 0xe

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80051
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80052
    return-void

    .line 80053
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A03:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Lt;->ABA(ILjava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 80054
    sget-object v2, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const-string v1, "NCNoRnun1G3dlwmqoYaN2uZPLfccAkgr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "12RLbgldZ9TmNXvaOMkOvzOeimlYTJg9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0M(Lorg/json/JSONObject;)V
    .locals 5

    .line 80055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Is;

    .line 80056
    .local v0, "uxListener":Lcom/facebook/ads/redexgen/X/Is;
    if-nez v3, :cond_0

    .line 80057
    return-void

    .line 80058
    :cond_0
    const/16 v2, 0x5c

    const/4 v1, 0x6

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/dJ;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/dJ;->A09:[Ljava/lang/String;

    const-string v1, "rydiERFHLfFXOcJD9tadKbqyFej0NUPk"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "tiiagSBkZ4Sc0Tn3kexlzzs5G1JfuHdZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80059
    .local v1, "key":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 80060
    return-void

    .line 80061
    :cond_1
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Is;->AGo(Ljava/lang/String;)V

    .line 80062
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0N(Lcom/facebook/ads/redexgen/X/Is;)V
    .locals 1

    .line 80063
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A01:Ljava/lang/ref/WeakReference;

    .line 80064
    return-void
.end method

.method public final A0O()Z
    .locals 1

    .line 80065
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/dJ;->A02:Z

    return v0
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 80066
    new-instance v0, Lcom/facebook/ads/redexgen/X/dG;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/dG;-><init>(Lcom/facebook/ads/redexgen/X/dJ;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Ljava/lang/Runnable;)V

    .line 80067
    return-void
.end method
