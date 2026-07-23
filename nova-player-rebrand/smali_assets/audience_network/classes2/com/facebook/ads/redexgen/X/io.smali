.class public final Lcom/facebook/ads/redexgen/X/io;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OE;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/AdError;

.field public A01:Lcom/facebook/ads/redexgen/X/OD;

.field public A02:Lcom/facebook/ads/redexgen/X/OD;

.field public final A03:Lcom/facebook/ads/redexgen/X/ik;

.field public final A04:Lcom/facebook/ads/redexgen/X/gi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2954
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LqS4Vpkhy9E"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ge1EwIuJY0TovlYE8lSK4ibgoBpAWn9a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "g9aMV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tM0yo6k6wg7fwB8A5Xyw1gAw"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QSFbFVun0ml7C8TY77Vqi1TYUccnWCEL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t0vPMbYvCUeZJjWwsMbVoEbKc6G6LcPD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iAyfyMUWIOpY9gjOpihEXzDIF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NOfvqhzewpei8jQqPEPmMqHVwiKNDwof"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/io;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/io;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ik;)V
    .locals 1

    .line 87398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87399
    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A02:Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    .line 87400
    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A02:Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lcom/facebook/ads/redexgen/X/OD;

    .line 87401
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 87402
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/io;->A03:Lcom/facebook/ads/redexgen/X/ik;

    .line 87403
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/io;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x21

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
    .locals 4

    const/16 v0, 0xed

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/io;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/io;->A06:[Ljava/lang/String;

    const-string v1, "uHXyGv91YS5AZybwuzmh7pK9ZkTxCxly"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "aSclBZwoH94XlBt4xX3FAXD0bzJVnGEs"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/io;->A05:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x7dt
        0x29t
        0x32t
        0x7dt
        0xct
        0x2t
        0x7bt
        0x4dt
        0x57t
        0x2t
        0x41t
        0x43t
        0x4ct
        0x2t
        0x41t
        0x4at
        0x43t
        0x4ct
        0x45t
        0x47t
        0x2t
        0x6bt
        0x4ct
        0x56t
        0x47t
        0x45t
        0x50t
        0x43t
        0x56t
        0x4bt
        0x4dt
        0x4ct
        0x2t
        0x67t
        0x50t
        0x50t
        0x4dt
        0x50t
        0x2t
        0x4ft
        0x4dt
        0x46t
        0x47t
        0x2t
        0x40t
        0x5bt
        0x2t
        0x51t
        0x47t
        0x56t
        0x56t
        0x4bt
        0x4ct
        0x45t
        0x2t
        0x63t
        0x46t
        0x71t
        0x47t
        0x56t
        0x56t
        0x4bt
        0x4ct
        0x45t
        0x51t
        0xct
        0x51t
        0x47t
        0x56t
        0x6bt
        0x4ct
        0x56t
        0x47t
        0x45t
        0x50t
        0x43t
        0x56t
        0x4bt
        0x4dt
        0x4ct
        0x67t
        0x50t
        0x50t
        0x4dt
        0x50t
        0x6ft
        0x4dt
        0x46t
        0x47t
        0xat
        0xbt
        0x25t
        0x21t
        0x22t
        0x16t
        0x7t
        0xat
        0x6t
        0xdt
        0x0t
        0x6t
        0x2dt
        0x6t
        0x17t
        0x14t
        0xct
        0x11t
        0x8t
        0x41t
        0x75t
        0x68t
        0x6at
        0x27t
        0x5at
        0x7ft
        0x62t
        0x63t
        0x6at
        0x2dt
        0x64t
        0x63t
        0x79t
        0x68t
        0x7ft
        0x63t
        0x6ct
        0x61t
        0x2dt
        0x79t
        0x7ft
        0x6ct
        0x63t
        0x7et
        0x64t
        0x79t
        0x64t
        0x62t
        0x63t
        0x23t
        0x7dt
        0x6ct
        0x75t
        0x6at
        0x69t
        0x67t
        0x62t
        0x2et
        0x2ft
        0x79t
        0x62t
        0x65t
        0x7dt
        0x22t
        0x23t
        0x78t
        0x64t
        0x6dt
        0x78t
        0x2ct
        0x65t
        0x7ft
        0x2ct
        0x6dt
        0x60t
        0x7et
        0x69t
        0x6dt
        0x68t
        0x75t
        0x2ct
        0x40t
        0x43t
        0x4dt
        0x48t
        0x45t
        0x42t
        0x4bt
        0x20t
        0x2ct
        0x40t
        0x43t
        0x4dt
        0x48t
        0x49t
        0x48t
        0x2ct
        0x63t
        0x7et
        0x2ct
        0x5ft
        0x44t
        0x43t
        0x5bt
        0x45t
        0x42t
        0x4bt
        0x7bt
        0x67t
        0x6et
        0x7bt
        0x2ft
        0x66t
        0x7ct
        0x2ft
        0x6et
        0x63t
        0x7dt
        0x6at
        0x6et
        0x6bt
        0x76t
        0x2ft
        0x5ct
        0x47t
        0x40t
        0x58t
        0x46t
        0x41t
        0x48t
        0x79t
        0x65t
        0x6ct
        0x79t
        0x2dt
        0x64t
        0x7et
        0x2dt
        0x63t
        0x62t
        0x79t
        0x2dt
        0x41t
        0x42t
        0x4ct
        0x49t
        0x48t
        0x49t
    .end array-data
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/OD;Lcom/facebook/ads/redexgen/X/OD;)V
    .locals 8

    .line 87404
    const/16 v2, 0x71

    const/16 v1, 0x1a

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v7

    .line 87405
    .local v0, "errorTitle":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6c

    const/4 v1, 0x5

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87406
    .local v1, "errorBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 87407
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A0e:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v7, v6}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87408
    const/16 v2, 0x8b

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Lt;->ALA(Ljava/lang/String;)V

    .line 87410
    return-void
.end method

.method private A03(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 87411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 87412
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OA;->A00(Lcom/facebook/ads/redexgen/X/gi;)Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    move-result-object v6

    .line 87413
    .local v0, "integrationErrorMode":Lcom/facebook/ads/AdSettings$IntegrationErrorMode;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INCORRECT_API_CALL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 87414
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    .line 87415
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 87416
    .local v1, "errorMessage":Ljava/lang/String;
    const/16 v2, 0x8b

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x5b

    const/16 v1, 0x11

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_0

    .line 87417
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87418
    new-instance v2, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 87419
    .local v3, "deException":Lcom/facebook/ads/redexgen/X/Te;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 87420
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0c:I

    .line 87421
    invoke-interface {v1, v5, v0, v2}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 87422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/Lt;->AL9(Ljava/lang/String;)V

    .line 87423
    return-void

    .line 87424
    .end local v3    # "deException":Lcom/facebook/ads/redexgen/X/Te;
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/OC;->A00:[I

    invoke-virtual {v6}, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 87425
    :goto_0
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87426
    return-void

    .line 87427
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A03:Lcom/facebook/ads/redexgen/X/ik;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ik;->A08()V

    .line 87428
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/io;->A03:Lcom/facebook/ads/redexgen/X/ik;

    const/16 v1, 0xa

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INCORRECT_STATE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/ik;->A0B(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 87429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/Lt;->AL9(Ljava/lang/String;)V

    .line 87430
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87431
    new-instance v2, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v2, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/String;)V

    .line 87432
    .local v4, "deException":Lcom/facebook/ads/redexgen/X/Te;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 87433
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/Td;->A0c:I

    .line 87434
    invoke-interface {v1, v5, v0, v2}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0

    .line 87435
    .end local v4    # "deException":Lcom/facebook/ads/redexgen/X/Te;
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x4

    const/16 v1, 0x57

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/OF;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A6U()Z
    .locals 7

    .line 87436
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A02:Lcom/facebook/ads/redexgen/X/OD;

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A04:Lcom/facebook/ads/redexgen/X/OD;

    if-ne v1, v0, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/OD;

    if-eq v1, v0, :cond_3

    const/4 v4, 0x1

    .line 87437
    .local v0, "canMoveToState":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 87438
    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A06:Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    .line 87439
    :goto_1
    if-nez v4, :cond_1

    :goto_2
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 87440
    :cond_2
    const/16 v2, 0x8e

    const/4 v1, 0x6

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x9a

    const/16 v1, 0x2a

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/io;->A03(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 87441
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final A6V()Z
    .locals 9

    .line 87442
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A04:Lcom/facebook/ads/redexgen/X/OD;

    const/4 v4, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A00:Lcom/facebook/ads/AdError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A00:Lcom/facebook/ads/AdError;

    .line 87443
    invoke-virtual {v0}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    const/16 v0, 0x7d8

    if-ne v1, v0, :cond_0

    .line 87444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AI5()V

    .line 87445
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/io;->A03:Lcom/facebook/ads/redexgen/X/ik;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-virtual {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ik;->A0B(ILcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 87446
    return v4

    .line 87447
    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v3, Lcom/facebook/ads/redexgen/X/OD;->A05:Lcom/facebook/ads/redexgen/X/OD;

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/io;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/io;->A06:[Ljava/lang/String;

    const-string v1, "mF60z106z8KVykzxhCmjg96dV72kpnud"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "JHGcNRxcSq72OhujKZnAiyvPQwA3qgql"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v6, v3, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/OD;

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A04:Lcom/facebook/ads/redexgen/X/gi;

    .line 87448
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v8, 0x1

    .line 87449
    .local v0, "canMoveToState":Z
    :goto_0
    if-eqz v8, :cond_3

    .line 87450
    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A02:Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    .line 87451
    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lcom/facebook/ads/redexgen/X/OD;

    .line 87452
    :goto_1
    if-nez v8, :cond_2

    :goto_2
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 87453
    :cond_3
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v6, Lcom/facebook/ads/redexgen/X/OD;->A05:Lcom/facebook/ads/redexgen/X/OD;

    const/16 v2, 0x94

    const/4 v1, 0x6

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v3

    if-eq v7, v6, :cond_4

    .line 87454
    const/16 v2, 0xdb

    const/16 v1, 0x12

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/io;->A03(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 87455
    :cond_4
    const/16 v2, 0xc4

    const/16 v1, 0x17

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0, v5}, Lcom/facebook/ads/redexgen/X/io;->A03(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 87456
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A6p()Lcom/facebook/ads/redexgen/X/OD;
    .locals 1

    .line 87457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    return-object v0
.end method

.method public final A6q()Lcom/facebook/ads/redexgen/X/OD;
    .locals 1

    .line 87458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lcom/facebook/ads/redexgen/X/OD;

    return-object v0
.end method

.method public final AAw()V
    .locals 1

    .line 87459
    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A06:Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    .line 87460
    return-void
.end method

.method public final AJM(Lcom/facebook/ads/redexgen/X/OD;)V
    .locals 0

    .line 87461
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    .line 87462
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lcom/facebook/ads/redexgen/X/OD;

    .line 87463
    return-void
.end method

.method public final AJR(Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 87464
    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A04:Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    .line 87465
    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A04:Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lcom/facebook/ads/redexgen/X/OD;

    .line 87466
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/io;->A00:Lcom/facebook/ads/AdError;

    .line 87467
    return-void
.end method

.method public final AJW()V
    .locals 4

    .line 87468
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A06:Lcom/facebook/ads/redexgen/X/OD;

    if-eq v1, v0, :cond_0

    .line 87469
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A05:Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A02(Lcom/facebook/ads/redexgen/X/OD;Lcom/facebook/ads/redexgen/X/OD;)V

    .line 87470
    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/OD;->A05:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v2, Lcom/facebook/ads/redexgen/X/io;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/io;->A06:[Ljava/lang/String;

    const-string v1, "0CQ8O9HdNp0eBnIGd0pIqA2Cb"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "A9QPt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    .line 87471
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AJm()V
    .locals 2

    .line 87472
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A07:Lcom/facebook/ads/redexgen/X/OD;

    if-eq v1, v0, :cond_0

    .line 87473
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/io;->A01:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A08:Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/io;->A02(Lcom/facebook/ads/redexgen/X/OD;Lcom/facebook/ads/redexgen/X/OD;)V

    .line 87474
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/OD;->A08:Lcom/facebook/ads/redexgen/X/OD;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/io;->A02:Lcom/facebook/ads/redexgen/X/OD;

    .line 87475
    return-void
.end method
