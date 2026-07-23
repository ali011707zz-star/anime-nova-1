.class final synthetic Lcom/google/android/gms/internal/ads/zzabr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzabs;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzabs;->zza:Lcom/google/android/gms/internal/ads/zzabt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabt;->zzB()Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd(Lcom/google/android/gms/internal/ads/zzbv;)V

    return-void
.end method
