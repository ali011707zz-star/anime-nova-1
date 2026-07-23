.class final synthetic Lcom/google/android/gms/internal/ads/zzfaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfad;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvs;

.field private final synthetic zzc:Landroid/os/Bundle;

.field private final synthetic zzd:Ljava/util/List;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzeqn;

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzcen;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfad;Lcom/google/android/gms/internal/ads/zzbvs;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeqn;Lcom/google/android/gms/internal/ads/zzcen;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zza:Lcom/google/android/gms/internal/ads/zzfad;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zzb:Lcom/google/android/gms/internal/ads/zzbvs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zzc:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zzd:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zze:Lcom/google/android/gms/internal/ads/zzeqn;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zzf:Lcom/google/android/gms/internal/ads/zzcen;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zza:Lcom/google/android/gms/internal/ads/zzfad;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zzb:Lcom/google/android/gms/internal/ads/zzbvs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zzc:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zzd:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zze:Lcom/google/android/gms/internal/ads/zzeqn;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfaa;->zzf:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfad;->zze(Lcom/google/android/gms/internal/ads/zzbvs;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeqn;Lcom/google/android/gms/internal/ads/zzcen;)V

    return-void
.end method
