.class public abstract Lcom/google/android/gms/internal/ads/zzhzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzibb;->zza:Lcom/google/android/gms/internal/ads/zzibb;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zziaa;->$r8$clinit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zziaq;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidk;->zzb(Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzidc;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzb(I)V

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidd;->zzbi()Z

    move-result p1

    if-nez p1, :cond_1

    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzhzw;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zziee;

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zziee;-><init>(Lcom/google/android/gms/internal/ads/zzidc;)V

    goto :goto_0

    .line 6
    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhzw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaU()Lcom/google/android/gms/internal/ads/zziee;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziee;->zza()Lcom/google/android/gms/internal/ads/zzicg;

    move-result-object p1

    .line 11
    throw p1

    :cond_1
    return-object p2
.end method
