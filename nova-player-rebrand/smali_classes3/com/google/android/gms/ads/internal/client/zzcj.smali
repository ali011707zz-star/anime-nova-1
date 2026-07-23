.class public abstract Lcom/google/android/gms/ads/internal/client/zzcj;
.super Lcom/google/android/gms/internal/ads/zzbct;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzck;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.client.IAdPreloader"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbct;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzdd(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzv(I)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 5
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 8
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzu(ILjava/lang/String;)Z

    move-result p1

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 11
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 14
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzt(ILjava/lang/String;)I

    move-result p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 19
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzs(I)Landroid/os/Bundle;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 22
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 24
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 25
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzr(ILjava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzft;

    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 28
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 30
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcaz;

    move-result-object p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 33
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 35
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbex;

    move-result-object p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 38
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 40
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzo(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object p1

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 43
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 46
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzn(ILjava/lang/String;)Z

    move-result p1

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 49
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 50
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzft;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzft;

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    const-string p4, "com.google.android.gms.ads.internal.client.IAdPreloadCallbackV2"

    .line 52
    invoke-interface {v1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v2, p4, Lcom/google/android/gms/ads/internal/client/zzch;

    if-eqz v2, :cond_1

    .line 53
    check-cast p4, Lcom/google/android/gms/ads/internal/client/zzch;

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/google/android/gms/ads/internal/client/zzcf;

    invoke-direct {p4, v1}, Lcom/google/android/gms/ads/internal/client/zzcf;-><init>(Landroid/os/IBinder;)V

    .line 54
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 55
    invoke-interface {p0, p1, v0, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzm(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;)Z

    move-result p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 58
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbts;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbtt;

    .line 59
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 61
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 63
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzk(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 66
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 68
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzj(Ljava/lang/String;)Z

    move-result p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 71
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 73
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbex;

    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 76
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 78
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzh(Ljava/lang/String;)Z

    move-result p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 81
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 83
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcaz;

    move-result-object p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 86
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 88
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzf(Ljava/lang/String;)Z

    move-result p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 91
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zzft;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 97
    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.client.IAdPreloadCallback"

    .line 93
    invoke-interface {v0, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v1, p4, Lcom/google/android/gms/ads/internal/client/zzce;

    if-eqz v1, :cond_3

    .line 94
    check-cast p4, Lcom/google/android/gms/ads/internal/client/zzce;

    goto :goto_1

    :cond_3
    new-instance p4, Lcom/google/android/gms/ads/internal/client/zzcc;

    invoke-direct {p4, v0}, Lcom/google/android/gms/ads/internal/client/zzcc;-><init>(Landroid/os/IBinder;)V

    .line 95
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 96
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/client/zzce;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
