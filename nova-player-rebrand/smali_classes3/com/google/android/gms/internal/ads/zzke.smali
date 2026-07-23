.class final synthetic Lcom/google/android/gms/internal/ads/zzke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzks;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzlc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzks;Lcom/google/android/gms/internal/ads/zzlc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzke;->zza:Lcom/google/android/gms/internal/ads/zzks;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzke;->zzb:Lcom/google/android/gms/internal/ads/zzlc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzke;->zza:Lcom/google/android/gms/internal/ads/zzks;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzke;->zzb:Lcom/google/android/gms/internal/ads/zzlc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzks;->zzO(Lcom/google/android/gms/internal/ads/zzlc;)V

    return-void
.end method
