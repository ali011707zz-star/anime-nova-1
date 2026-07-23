.class public final Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleAdInfo"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1663
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CGAQp5QWLLSg2Up0KS3Xu0sm6KBD8ljy"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Yp64XCOUL3mdw2EQzsnOwJCP4iXogchF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0bXbaFV76JbdIHYzvJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7kYBXtp0pJ6J2QiQOtBXkhx4Mjb4MhNb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Pqj6DcWbIXVdg5nys55lljt7m2mFJmbz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gqs8Z9zjV1B"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yb2LGnYLr1jAVzG6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kQWFHy19WQfgSFrPEiRm4PYEBX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 64109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64110
    iput-object p1, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    .line 64111
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x67

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

    const/16 v0, 0x44

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x68t
        0x6at
        0x29t
        0x60t
        0x68t
        0x68t
        0x60t
        0x6bt
        0x62t
        0x29t
        0x66t
        0x69t
        0x63t
        0x75t
        0x68t
        0x6et
        0x63t
        0x29t
        0x60t
        0x6at
        0x74t
        0x29t
        0x66t
        0x63t
        0x74t
        0x29t
        0x6et
        0x63t
        0x62t
        0x69t
        0x73t
        0x6et
        0x61t
        0x6et
        0x62t
        0x75t
        0x29t
        0x6et
        0x69t
        0x73t
        0x62t
        0x75t
        0x69t
        0x66t
        0x6bt
        0x29t
        0x4et
        0x46t
        0x63t
        0x71t
        0x62t
        0x75t
        0x73t
        0x6et
        0x74t
        0x6et
        0x69t
        0x60t
        0x4et
        0x63t
        0x54t
        0x62t
        0x75t
        0x71t
        0x6et
        0x64t
        0x62t
    .end array-data
.end method


# virtual methods
.method public final A02()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 64113
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 64114
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const/4 v2, 0x0

    const/16 v1, 0x44

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 64115
    iget-object v2, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {v2, v1, v4, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 64116
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 64117
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64118
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 64119
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 64120
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A02:[Ljava/lang/String;

    const-string v1, "0APG8T86KeB7s6esCzOnlOcV6mb8f0OX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v0, 0x52

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64121
    .end local v2    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 64122
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 64123
    throw v0
.end method

.method public final A03()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 64125
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 64126
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const/4 v2, 0x0

    const/16 v1, 0x44

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 64127
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 64128
    iget-object v2, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-interface {v2, v1, v5, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 64129
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 64130
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64131
    .local v2, "limitAdTracking":Z
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 64132
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 64133
    return v3

    .line 64134
    .end local v2    # "limitAdTracking":Z
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 64135
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 64136
    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 64137
    iget-object v0, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    return-object v0
.end method
