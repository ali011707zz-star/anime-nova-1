.class final synthetic Lcom/google/android/gms/internal/ads/zzbtg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzboh;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzb:Lcom/google/android/gms/internal/ads/zzboh;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsm;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzb:Lcom/google/android/gms/internal/ads/zzboh;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbsm;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    return-object p1
.end method
