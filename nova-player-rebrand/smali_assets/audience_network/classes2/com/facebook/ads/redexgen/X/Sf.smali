.class public abstract Lcom/facebook/ads/redexgen/X/Sf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Se;,
        Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;
    }
.end annotation


# static fields
.field public static A00:Ljava/lang/String;

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1664
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jP5DLqFPT2uLfDhjwGtyJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b2Kf1V0V33xxSFNxYAUwKzTnuvA5CTmH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "utws2CXgYjyIi4p9N5JN7AtJgUuBwVKL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "iHkd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "J1QCfiNfulUMnwHMV72QByuh5OrpyBC4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Ilbx2HAT56j3G7gTz5Evg9nZeC6mk12l"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SrkakodA8D"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LiqB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sf;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sf;->A05()V

    const-class v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sf;->A03:Ljava/lang/String;

    .line 1665
    const/16 v2, 0xad

    const/16 v1, 0x34

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sf;->A00:Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/SX;
    .locals 5

    .line 64149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v1, v0, :cond_5

    .line 64150
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Sf;->A01(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v4

    .line 64151
    .local v0, "info":Lcom/facebook/ads/redexgen/X/SX;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sf;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sf;->A02:[Ljava/lang/String;

    const-string v1, "hh0RZKDdPPlAkARzc3g59"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 64152
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Sf;->A02(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v4

    .line 64153
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/SX;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64154
    :cond_3
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Sf;->A03(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v4

    .line 64155
    :cond_4
    return-object v4

    .line 64156
    .end local v0    # "info":Lcom/facebook/ads/redexgen/X/SX;
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x2b

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/SX;
    .locals 3

    .line 64157
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->A8x()Lcom/facebook/ads/redexgen/X/TC;

    move-result-object v0

    .line 64158
    .local v0, "adId":Lcom/facebook/ads/redexgen/X/TC;
    if-eqz v0, :cond_0

    .line 64159
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TC;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TC;->AAX()Z

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SW;->A02:Lcom/facebook/ads/redexgen/X/SW;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;)V

    .line 64160
    return-object v0

    .line 64161
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/SX;
    .locals 9

    .line 64162
    sget-object v5, Lcom/facebook/ads/redexgen/X/Sf;->A00:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v0, v3, v8

    .line 64163
    const/16 v2, 0x101

    const/16 v1, 0x1d

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3}, Lcom/facebook/ads/redexgen/X/Sg;->A02(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64164
    .local v0, "isGooglePlayServicesAvailable":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 64165
    return-object v6

    .line 64166
    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v8

    .line 64167
    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Sg;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64168
    .local v3, "connectionResult":Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 64169
    .end local v5
    .end local v6
    .end local v7
    .end local v8
    :cond_1
    return-object v6

    .line 64170
    :cond_2
    new-array v5, v4, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, v5, v8

    .line 64171
    const/16 v2, 0x41

    const/16 v1, 0x39

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe8

    const/16 v1, 0x14

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Sg;->A02(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64172
    .local v5, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    if-nez v1, :cond_3

    .line 64173
    return-object v6

    .line 64174
    :cond_3
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v8

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Sg;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 64175
    .local v6, "advertisingInfo":Ljava/lang/Object;
    if-nez v7, :cond_4

    .line 64176
    return-object v6

    .line 64177
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v2, 0xfc

    const/4 v1, 0x5

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-array v0, v8, [Ljava/lang/Class;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Sg;->A01(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 64178
    .local v7, "getId":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v2, 0x11e

    const/16 v1, 0x18

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-array v0, v8, [Ljava/lang/Class;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Sg;->A01(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64179
    .local v8, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_5

    if-nez v1, :cond_6

    .line 64180
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/T8;
    .end local p1
    :cond_5
    return-object v6

    .line 64181
    :cond_6
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v7, v5, v0}, Lcom/facebook/ads/redexgen/X/Sg;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64182
    .local p0, "id":Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/Object;

    .line 64183
    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/Sg;->A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 64184
    .local p1, "limitAdTrackingEnabled":Ljava/lang/Boolean;
    if-eqz v2, :cond_8

    .line 64185
    if-eqz v0, :cond_7

    .line 64186
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/SW;->A06:Lcom/facebook/ads/redexgen/X/SW;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v0, v2, v4, v1}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;)V

    .line 64187
    return-object v0

    .line 64188
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 64189
    :cond_8
    return-object v6
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/T8;)Lcom/facebook/ads/redexgen/X/SX;
    .locals 7

    .line 64190
    const/4 v6, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Se;

    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/Se;-><init>(Lcom/facebook/ads/redexgen/X/Sc;)V

    .line 64191
    .local v0, "connection":Lcom/facebook/ads/redexgen/X/Se;
    const/16 v2, 0x7a

    const/16 v1, 0x33

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64192
    .local v2, "intent":Landroid/content/Intent;
    const/16 v2, 0x2b

    const/16 v1, 0x16

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64193
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v5, v0}, Lcom/facebook/ads/redexgen/X/T8;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64194
    :try_start_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Se;->A02()Landroid/os/IBinder;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;-><init>(Landroid/os/IBinder;)V

    .line 64195
    invoke-virtual {v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A02()Ljava/lang/String;

    move-result-object v3

    .line 64196
    invoke-virtual {v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A03()Z

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SW;->A07:Lcom/facebook/ads/redexgen/X/SW;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/SW;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64197
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/T8;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64198
    return-object v0

    .line 64199
    .end local v3
    :catchall_0
    move-exception v4

    .line 64200
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/16 v2, 0xe1

    const/4 v1, 0x7

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sf;->A04(III)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/ads/redexgen/X/Td;->A1Q:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 64201
    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64202
    :catchall_1
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/T8;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64203
    throw v0

    .line 64204
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/T8;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64205
    :cond_0
    return-object v6
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sf;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5a

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sf;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sf;->A02:[Ljava/lang/String;

    const-string v1, "KHgMerLXVce8bYpnKoYEO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x136

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sf;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x66t
        0x44t
        0x4bt
        0x4bt
        0x4at
        0x51t
        0x5t
        0x42t
        0x40t
        0x51t
        0x5t
        0x44t
        0x41t
        0x53t
        0x40t
        0x57t
        0x51t
        0x4ct
        0x56t
        0x4ct
        0x4bt
        0x42t
        0x5t
        0x4ct
        0x4bt
        0x43t
        0x4at
        0x5t
        0x4at
        0x4bt
        0x5t
        0x48t
        0x44t
        0x4ct
        0x4bt
        0x5t
        0x51t
        0x4dt
        0x57t
        0x40t
        0x44t
        0x41t
        0xbt
        0x58t
        0x54t
        0x56t
        0x15t
        0x5ct
        0x54t
        0x54t
        0x5ct
        0x57t
        0x5et
        0x15t
        0x5at
        0x55t
        0x5ft
        0x49t
        0x54t
        0x52t
        0x5ft
        0x15t
        0x5ct
        0x56t
        0x48t
        0x6at
        0x66t
        0x64t
        0x27t
        0x6et
        0x66t
        0x66t
        0x6et
        0x65t
        0x6ct
        0x27t
        0x68t
        0x67t
        0x6dt
        0x7bt
        0x66t
        0x60t
        0x6dt
        0x27t
        0x6et
        0x64t
        0x7at
        0x27t
        0x68t
        0x6dt
        0x7at
        0x27t
        0x60t
        0x6dt
        0x6ct
        0x67t
        0x7dt
        0x60t
        0x6ft
        0x60t
        0x6ct
        0x7bt
        0x27t
        0x48t
        0x6dt
        0x7ft
        0x6ct
        0x7bt
        0x7dt
        0x60t
        0x7at
        0x60t
        0x67t
        0x6et
        0x40t
        0x6dt
        0x4at
        0x65t
        0x60t
        0x6ct
        0x67t
        0x7dt
        0x26t
        0x2at
        0x28t
        0x6bt
        0x22t
        0x2at
        0x2at
        0x22t
        0x29t
        0x20t
        0x6bt
        0x24t
        0x2bt
        0x21t
        0x37t
        0x2at
        0x2ct
        0x21t
        0x6bt
        0x22t
        0x28t
        0x36t
        0x6bt
        0x24t
        0x21t
        0x36t
        0x6bt
        0x2ct
        0x21t
        0x20t
        0x2bt
        0x31t
        0x2ct
        0x23t
        0x2ct
        0x20t
        0x37t
        0x6bt
        0x36t
        0x20t
        0x37t
        0x33t
        0x2ct
        0x26t
        0x20t
        0x6bt
        0x16t
        0x11t
        0x4t
        0x17t
        0x11t
        0x35t
        0x39t
        0x3bt
        0x78t
        0x31t
        0x39t
        0x39t
        0x31t
        0x3at
        0x33t
        0x78t
        0x37t
        0x38t
        0x32t
        0x24t
        0x39t
        0x3ft
        0x32t
        0x78t
        0x31t
        0x3bt
        0x25t
        0x78t
        0x35t
        0x39t
        0x3bt
        0x3bt
        0x39t
        0x38t
        0x78t
        0x11t
        0x39t
        0x39t
        0x31t
        0x3at
        0x33t
        0x6t
        0x3at
        0x37t
        0x2ft
        0x5t
        0x33t
        0x24t
        0x20t
        0x3ft
        0x35t
        0x33t
        0x25t
        0x3t
        0x22t
        0x3ft
        0x3at
        0x74t
        0x76t
        0x7dt
        0x76t
        0x61t
        0x7at
        0x70t
        0x5ft
        0x5dt
        0x4ct
        0x79t
        0x5ct
        0x4et
        0x5dt
        0x4at
        0x4ct
        0x51t
        0x4bt
        0x51t
        0x56t
        0x5ft
        0x71t
        0x5ct
        0x71t
        0x56t
        0x5et
        0x57t
        0x41t
        0x43t
        0x52t
        0x6ft
        0x42t
        0x31t
        0x2bt
        0x1ft
        0x37t
        0x37t
        0x3ft
        0x34t
        0x3dt
        0x8t
        0x34t
        0x39t
        0x21t
        0xbt
        0x3dt
        0x2at
        0x2et
        0x31t
        0x3bt
        0x3dt
        0x2bt
        0x19t
        0x2et
        0x39t
        0x31t
        0x34t
        0x39t
        0x3at
        0x34t
        0x3dt
        0x4dt
        0x57t
        0x68t
        0x4dt
        0x49t
        0x4dt
        0x50t
        0x65t
        0x40t
        0x70t
        0x56t
        0x45t
        0x47t
        0x4ft
        0x4dt
        0x4at
        0x43t
        0x61t
        0x4at
        0x45t
        0x46t
        0x48t
        0x41t
        0x40t
    .end array-data
.end method
