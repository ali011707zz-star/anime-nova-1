.class public abstract Lcom/google/android/gms/internal/ads/zzcay;
.super Lcom/google/android/gms/internal/ads/zzbct;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcaz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbct;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzcaz;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzcaz;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcaz;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcax;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zzdd(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .line 31
    const-string p4, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcaz;->zzr(J)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 5
    :pswitch_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzq()J

    move-result-wide p1

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_4

    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzn()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 10
    :pswitch_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 12
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaz;->zzp(Z)V

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 14
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzm;

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzcbg;

    if-eqz v0, :cond_1

    .line 17
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbg;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbe;-><init>(Landroid/os/IBinder;)V

    .line 18
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 19
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzd(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzcbg;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 21
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzds;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdt;

    move-result-object p1

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 23
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaz;->zzo(Lcom/google/android/gms/ads/internal/client/zzdt;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 25
    :pswitch_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzm()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_4

    .line 28
    :pswitch_7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzl()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_4

    .line 31
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zza(Landroid/os/Parcel;)Z

    move-result p4

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 34
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcaz;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 36
    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzg()Landroid/os/Bundle;

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_4

    .line 39
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzdp;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object p1

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 41
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaz;->zzf(Lcom/google/android/gms/ads/internal/client/zzdq;)V

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 43
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcbn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbn;

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 45
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaz;->zzh(Lcom/google/android/gms/internal/ads/zzcbn;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 47
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener"

    .line 48
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzcbh;

    if-eqz v0, :cond_3

    .line 49
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbh;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbh;-><init>(Landroid/os/IBinder;)V

    .line 50
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 51
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzs(Lcom/google/android/gms/internal/ads/zzcbh;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 53
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 55
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaz;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4

    .line 57
    :pswitch_e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzj()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 60
    :pswitch_f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzi()Z

    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    sget p2, Lcom/google/android/gms/internal/ads/zzbcu;->$r8$clinit:I

    .line 63
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 64
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 69
    :cond_4
    const-string p4, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    .line 65
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzcbc;

    if-eqz v0, :cond_5

    .line 66
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbc;

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcba;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcba;-><init>(Landroid/os/IBinder;)V

    .line 67
    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 68
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcaz;->zze(Lcom/google/android/gms/internal/ads/zzcbc;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4

    .line 70
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzm;

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 72
    :cond_6
    invoke-interface {v1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzcbg;

    if-eqz v0, :cond_7

    .line 73
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbg;

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbe;-><init>(Landroid/os/IBinder;)V

    .line 74
    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcu;->zzh(Landroid/os/Parcel;)V

    .line 75
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcaz;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzcbg;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4
    const/4 p1, 0x1

    return p1

    nop

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
