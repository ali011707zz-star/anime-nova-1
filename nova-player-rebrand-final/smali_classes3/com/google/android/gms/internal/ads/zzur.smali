.class final synthetic Lcom/google/android/gms/internal/ads/zzur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzuu;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzlh;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzlh;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzur;->zza:Lcom/google/android/gms/internal/ads/zzuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzur;->zzb:Lcom/google/android/gms/internal/ads/zzlh;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzur;->zza:Lcom/google/android/gms/internal/ads/zzuu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzur;->zzb:Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzuu;->zzbe(Lcom/google/android/gms/internal/ads/zzlh;)V

    return-void
.end method
