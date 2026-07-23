.class public final Lcom/google/android/gms/internal/ads/zzchd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzchc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchd;->zza:Lcom/google/android/gms/internal/ads/zzchc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcge;

    const-string p1, "action"

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Action missing from video GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 6
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "src missing from video GMSG."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchd;->zza:Lcom/google/android/gms/internal/ads/zzchc;

    .line 8
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzchc;->zza(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
