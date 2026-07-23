.class public final Lcom/facebook/ads/redexgen/X/Sl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WD;->A03(JLcom/facebook/ads/redexgen/X/WA;)Lcom/facebook/ads/redexgen/X/Sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WA;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/WD;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1669
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vUQacvUb1jgaOB1nXCILUaEr4ItZ5QEs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ozPzI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iemFS7qx3ItQSdDQeBrvuJ9y9CMkfIqY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EwROMxnfRd6F7268i4EpvPtVg3hQf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qVu8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3RxrE6NsEsLt8TXu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sl;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/WA;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64237
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sl;->A01:Lcom/facebook/ads/redexgen/X/WA;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sl;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x78

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

    const/16 v0, 0x60

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sl;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x55t
        0x51t
        0x3t
        0x55t
        0x57t
        0x7t
        0x50t
        0x3t
        0x3ct
        0x6ft
        0x33t
        0x3ft
        0x33t
        0x3ft
        0x6bt
        0x3ct
        0x2ct
        0x35t
        0x29t
        0x28t
        0x23t
        0x1et
        0x5t
        0x3t
        0x16t
        0x12t
        0xft
        0x9t
        0x8t
        0x5ct
        0x46t
        0x4et
        0x78t
        0x6ft
        0x6bt
        0x78t
        0x6ft
        0x3dt
        0x78t
        0x6ft
        0x6ft
        0x72t
        0x6ft
        0x3dt
        0x72t
        0x7et
        0x7et
        0x68t
        0x6ft
        0x6ft
        0x78t
        0x79t
        0x7ct
        0x4at
        0x5dt
        0x59t
        0x4at
        0x5dt
        0xft
        0x5dt
        0x4at
        0x5ft
        0x43t
        0x46t
        0x4at
        0x4bt
        0xft
        0x5ct
        0x5at
        0x4ct
        0x4ct
        0x4at
        0x5ct
        0x5ct
        0x49t
        0x5at
        0x43t
        0x43t
        0x56t
        0x3ft
        0x3et
        0x13t
        0x3ft
        0x3dt
        0x20t
        0x3ct
        0x35t
        0x24t
        0x35t
        0x10t
        0x11t
        0x3at
        0xdt
        0xdt
        0x10t
        0xdt
    .end array-data
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/g8;)V
    .locals 13

    .line 64238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A01:Lcom/facebook/ads/redexgen/X/WA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W9;->A06(Lcom/facebook/ads/redexgen/X/WA;)V

    .line 64239
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/g8;->A00()Lcom/facebook/ads/redexgen/X/fu;

    move-result-object v0

    .line 64240
    .local v0, "response":Lcom/facebook/ads/redexgen/X/fu;
    if-eqz v0, :cond_1

    .line 64241
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fu;->A73()Ljava/lang/String;

    move-result-object v7

    .line 64242
    .local v1, "content":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    .line 64243
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A04(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/WE;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:J

    invoke-virtual {v3, v2, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/WE;->A07(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/WG;

    move-result-object v2

    .line 64244
    .local v2, "serverResponse":Lcom/facebook/ads/redexgen/X/WG;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/WG;->A01()Lcom/facebook/ads/redexgen/X/WF;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/WF;->A03:Lcom/facebook/ads/redexgen/X/WF;

    if-ne v1, v0, :cond_1

    .line 64245
    check-cast v2, Lcom/facebook/ads/redexgen/X/R4;

    .line 64246
    .local v3, "serverResponseError":Lcom/facebook/ads/redexgen/X/R4;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/R4;->A04()Ljava/lang/String;

    move-result-object v3

    .line 64247
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/R4;->A03()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 64248
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v2

    .line 64249
    .local v5, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    if-nez v3, :cond_0

    .line 64250
    .local v6, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 64251
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    .line 64252
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(Lcom/facebook/ads/redexgen/X/WD;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v4

    .line 64253
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 64254
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 64255
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 64256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0H(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V

    goto :goto_1

    .line 64257
    :cond_0
    move-object v7, v3

    goto :goto_0

    .line 64258
    :goto_1
    return-void
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64259
    .end local v0    # "response":Lcom/facebook/ads/redexgen/X/fu;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "serverResponse":Lcom/facebook/ads/redexgen/X/WG;
    .end local v3    # "serverResponseError":Lcom/facebook/ads/redexgen/X/R4;
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v5    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v6    # "finalErrMessage":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 64260
    .local v0, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/g8;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 64261
    .local v7, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 64262
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    .line 64263
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(Lcom/facebook/ads/redexgen/X/WD;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v5

    .line 64264
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 64265
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 64266
    sget-object v1, Lcom/facebook/ads/redexgen/X/Sl;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A04:[Ljava/lang/String;

    const-string v1, "NZ18w"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 64267
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0H(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 64268
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64269
    .end local v0    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v7    # "errorMessage":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 64270
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 64271
    .local v1, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/g8;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 64272
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 64273
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    .line 64274
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(Lcom/facebook/ads/redexgen/X/WD;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v8

    .line 64275
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x10

    const/16 v1, 0xf

    const/16 v0, 0x1e

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64276
    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 64277
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v12

    .line 64278
    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 64279
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0H(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 64280
    return-void
.end method


# virtual methods
.method public final ADR(Lcom/facebook/ads/redexgen/X/fu;)V
    .locals 5

    const/16 v2, 0x34

    const/16 v1, 0x1b

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4f

    const/16 v1, 0xa

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64281
    if-eqz p1, :cond_2

    .line 64282
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/fu;->A73()Ljava/lang/String;

    move-result-object v4

    .line 64283
    .local v0, "response":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A02(Landroid/content/Context;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A04:[Ljava/lang/String;

    const-string v1, "kblvpkFa8oUK1ItVGqcsW93nH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-lez v3, :cond_1

    .line 64284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wl;->A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Wl;->A0C(Ljava/lang/String;)V

    .line 64285
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A01:Lcom/facebook/ads/redexgen/X/WA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W9;->A06(Lcom/facebook/ads/redexgen/X/WA;)V

    .line 64286
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A01:Lcom/facebook/ads/redexgen/X/WA;

    invoke-static {v3, v4, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0K(Lcom/facebook/ads/redexgen/X/WD;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V

    .line 64287
    .end local v0    # "response":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public final ADq(Ljava/lang/Exception;)V
    .locals 9

    const/16 v2, 0x1f

    const/16 v1, 0x15

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/4 v1, 0x7

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vy;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64288
    const-class v1, Lcom/facebook/ads/redexgen/X/g8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64289
    check-cast p1, Lcom/facebook/ads/redexgen/X/g8;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sl;->A02(Lcom/facebook/ads/redexgen/X/g8;)V

    .line 64290
    .end local v0
    .end local v7
    :goto_0
    return-void

    .line 64291
    :cond_0
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 64292
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 64293
    .local v7, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A02(Lcom/facebook/ads/redexgen/X/WD;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 64294
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    .line 64295
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(Lcom/facebook/ads/redexgen/X/WD;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Y1;->A01(J)J

    move-result-wide v4

    .line 64296
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 64297
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 64298
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Lt;->A3W(JILjava/lang/String;Z)V

    .line 64299
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:Lcom/facebook/ads/redexgen/X/WD;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Vm;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0H(Lcom/facebook/ads/redexgen/X/WD;Lcom/facebook/ads/redexgen/X/Vm;)V

    goto :goto_0
.end method
