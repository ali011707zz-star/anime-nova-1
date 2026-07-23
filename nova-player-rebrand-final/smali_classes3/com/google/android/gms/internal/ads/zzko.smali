.class final Lcom/google/android/gms/internal/ads/zzko;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlr;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Lcom/google/android/gms/internal/ads/zzbf;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwf;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzko;->zza:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzwf;->zzz()Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzko;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzko;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzko;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzko;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    return-void
.end method
