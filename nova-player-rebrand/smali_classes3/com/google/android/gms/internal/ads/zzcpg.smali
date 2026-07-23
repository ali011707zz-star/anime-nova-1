.class final synthetic Lcom/google/android/gms/internal/ads/zzcpg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcpj;

.field private final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcpj;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpg;->zza:Lcom/google/android/gms/internal/ads/zzcpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpg;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zzf:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcph;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpg;->zza:Lcom/google/android/gms/internal/ads/zzcpj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcpg;->zzb:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcph;-><init>(Lcom/google/android/gms/internal/ads/zzcpj;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
