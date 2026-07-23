.class public final Lcom/google/android/gms/internal/ads/zzhtq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhla;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhtq;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhku;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhtq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhtq;->zza:Lcom/google/android/gms/internal/ads/zzhtq;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtn;->zza:Lcom/google/android/gms/internal/ads/zzhtn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhjo;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhbr;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhku;->zzd(Lcom/google/android/gms/internal/ads/zzhkt;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhtq;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtq;->zza:Lcom/google/android/gms/internal/ads/zzhtq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzc(Lcom/google/android/gms/internal/ads/zzhla;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtq;->zzb:Lcom/google/android/gms/internal/ads/zzhku;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb(Lcom/google/android/gms/internal/ads/zzhku;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Lcom/google/android/gms/internal/ads/zzhbr;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Lcom/google/android/gms/internal/ads/zzhbr;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Lcom/google/android/gms/internal/ads/zzhkz;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhjr;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkb;->zza()Lcom/google/android/gms/internal/ads/zzhkb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkb;->zzb()Lcom/google/android/gms/internal/ads/zzhjt;

    move-result-object v0

    const-string v1, "public_key_sign"

    const-string v2, "sign"

    .line 3
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjt;->zza(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhjs;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhjv;->zza:Lcom/google/android/gms/internal/ads/zzhjs;

    .line 3
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhto;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhbk;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhbk;->zzc()Lcom/google/android/gms/internal/ads/zzhbi;

    move-result-object v2

    .line 5
    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Lcom/google/android/gms/internal/ads/zzhbi;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzhbr;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhbk;->zzc()Lcom/google/android/gms/internal/ads/zzhbi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhbi;->zzc()I

    move-result p1

    invoke-direct {v1, p3, p1}, Lcom/google/android/gms/internal/ads/zzhto;-><init>(Lcom/google/android/gms/internal/ads/zzhbr;I)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhtp;-><init>(Lcom/google/android/gms/internal/ads/zzhto;Lcom/google/android/gms/internal/ads/zzhjs;)V

    return-object v0
.end method
