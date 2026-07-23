.class final synthetic Lcom/google/android/gms/internal/ads/zzezy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyv;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfad;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/util/List;

.field private final synthetic zzd:Landroid/os/Bundle;

.field private final synthetic zze:Z

.field private final synthetic zzf:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfad;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezy;->zza:Lcom/google/android/gms/internal/ads/zzfad;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezy;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzezy;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzezy;->zzd:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzezy;->zze:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzezy;->zzf:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezy;->zza:Lcom/google/android/gms/internal/ads/zzfad;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezy;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzezy;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzezy;->zzd:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzezy;->zze:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzezy;->zzf:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfad;->zzd(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
