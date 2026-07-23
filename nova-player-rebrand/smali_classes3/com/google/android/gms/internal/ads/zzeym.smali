.class public final Lcom/google/android/gms/internal/ads/zzeym;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzebf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;Lcom/google/android/gms/internal/ads/zzebf;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeym;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeym;->zzb:Lcom/google/android/gms/internal/ads/zzebf;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeyl;-><init>(Lcom/google/android/gms/internal/ads/zzeym;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeym;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x17

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzeyn;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeym;->zzb:Lcom/google/android/gms/internal/ads/zzebf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzebf;->zzg()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzebf;->zzd()Z

    move-result v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/ads/internal/util/zzax;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/zzax;->zzk()Z

    move-result v4

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzebf;->zzq()Z

    move-result v5

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzebf;->zzm()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeyn;-><init>(Ljava/lang/String;ZZZZ)V

    return-object v1
.end method
