.class final synthetic Lcom/google/android/gms/internal/ads/zzhjw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjb;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhjw;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhjw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhjw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhjw;->zza:Lcom/google/android/gms/internal/ads/zzhjw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhjp;

    sget v0, Lcom/google/android/gms/internal/ads/zzhjx;->$r8$clinit:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhjp;->zzb()Lcom/google/android/gms/internal/ads/zzhlc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhjc;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhba;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjc;->zza()Lcom/google/android/gms/internal/ads/zzhjc;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhjc;->zze(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqf;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhba;->zzd(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhqc;->zza()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhqc;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhqc;->zzc()Lcom/google/android/gms/internal/ads/zzhqb;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object p1

    .line 9
    invoke-static {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhlb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhjo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v0

    .line 10
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjo;-><init>(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Creating new keys is not allowed."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
