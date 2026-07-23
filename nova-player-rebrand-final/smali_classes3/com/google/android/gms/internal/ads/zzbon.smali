.class public final Lcom/google/android/gms/internal/ads/zzbon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbon;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzD()Lcom/google/android/gms/internal/ads/zzccq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbon;->zza:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzccq;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "eventName"

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "eventId"

    .line 3
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x170bf

    const/4 v3, 0x2

    const-string v4, "_ac"

    const/4 v5, 0x1

    const-string v6, "_ai"

    if-eq v1, v2, :cond_3

    const v2, 0x170c1

    if-eq v1, v2, :cond_2

    const v2, 0x170c7

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "_aa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v3, :cond_5

    .line 12
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "logScionEvent gmsg contained unsupported eventName"

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzD()Lcom/google/android/gms/internal/ads/zzccq;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzccq;->zzn(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzb:Ljava/util/Map;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzD()Lcom/google/android/gms/internal/ads/zzccq;

    move-result-object v1

    .line 7
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 8
    invoke-virtual {v1, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzccq;->zzl(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbon;->zzb:Ljava/util/Map;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzD()Lcom/google/android/gms/internal/ads/zzccq;

    move-result-object v1

    .line 10
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 11
    invoke-virtual {v1, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzccq;->zzk(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
