.class final synthetic Lcom/google/android/gms/internal/ads/zzdnv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdoc;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdqe;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdoc;Lcom/google/android/gms/internal/ads/zzdqe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnv;->zza:Lcom/google/android/gms/internal/ads/zzdoc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnv;->zzb:Lcom/google/android/gms/internal/ads/zzdqe;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnv;->zza:Lcom/google/android/gms/internal/ads/zzdoc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnv;->zzb:Lcom/google/android/gms/internal/ads/zzdqe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzU(Lcom/google/android/gms/internal/ads/zzdqe;)V

    return-void
.end method
