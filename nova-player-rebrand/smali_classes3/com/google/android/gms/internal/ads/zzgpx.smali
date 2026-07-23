.class final synthetic Lcom/google/android/gms/internal/ads/zzgpx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgpz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgpz;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpx;->zza:Lcom/google/android/gms/internal/ads/zzgpz;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpx;->zza:Lcom/google/android/gms/internal/ads/zzgpz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgpz;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zzi()Lcom/google/android/gms/internal/ads/zzgqg;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "unlinkToDeath"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzgqg;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zzm()Landroid/os/IInterface;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zzl()Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqf;->zzn(Landroid/os/IInterface;)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgqf;->zzk(Z)V

    return-void
.end method
