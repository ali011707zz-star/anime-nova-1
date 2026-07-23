.class public final Lcom/facebook/ads/redexgen/X/Xu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/gM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ut;->A00(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/CY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ge;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/gK;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2401
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "11yowYa9SjobATSyd4jbcYQKUh4edG44"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bHv0W2DtzV8d9jrYb9gmoc8MmzdN0fpB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tKoi6cKGljbVocPn31APtwXZRyGd7igq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ywmFCSl3Vn78B2eGXobUvwrScWlSo3bc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aFROHHWcme9RokkBpAaOqFeveGyJeM2s"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QLtd5uCJprXFRqzwd31bhpzpUHhxzcVz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "aKhknuldK0UVZxwEW2ZbTGmFeUx0ymlu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xu;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xu;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gK;Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73169
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xu;->A01:Lcom/facebook/ads/redexgen/X/gK;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xu;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x50

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xu;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xu;->A03:[Ljava/lang/String;

    const-string v1, "rnyHoYqJfuEUpW7gm8XbWdjDtWL8fGmk"

    const/4 v0, 0x0

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

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xu;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x66t
        0x62t
        0x77t
        0x76t
        0x71t
        0x66t
        0x5ct
        0x60t
        0x6ct
        0x6dt
        0x65t
        0x6at
        0x64t
    .end array-data
.end method


# virtual methods
.method public final A4m()V
    .locals 4

    .line 73170
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xu;->A01:Lcom/facebook/ads/redexgen/X/gK;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/gK;->A7i()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 73171
    .local v0, "featureConfigJson":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Up;->A37(Lorg/json/JSONObject;)V

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73172
    :catch_0
    move-exception v1

    .line 73173
    .local v0, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 73174
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
