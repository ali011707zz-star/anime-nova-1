.class public abstract Lcom/google/android/gms/internal/ads/zzhgv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhye;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzhkn;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhkk;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzhji;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzhjf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhln;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgv;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgu;->zza:Lcom/google/android/gms/internal/ads/zzhgu;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdv;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhlc;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhkn;->zzd(Lcom/google/android/gms/internal/ads/zzhkm;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhgv;->zzc:Lcom/google/android/gms/internal/ads/zzhkn;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgr;->zza:Lcom/google/android/gms/internal/ads/zzhgr;

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Lcom/google/android/gms/internal/ads/zzhkj;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhgv;->zzd:Lcom/google/android/gms/internal/ads/zzhkk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgs;->zza:Lcom/google/android/gms/internal/ads/zzhgs;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdo;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhlb;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhji;->zzd(Lcom/google/android/gms/internal/ads/zzhjh;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhji;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhgv;->zze:Lcom/google/android/gms/internal/ads/zzhji;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgt;->zza:Lcom/google/android/gms/internal/ads/zzhgt;

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzhjf;->zzd(Lcom/google/android/gms/internal/ads/zzhje;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgv;->zzf:Lcom/google/android/gms/internal/ads/zzhjf;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhkg;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgv;->zzc:Lcom/google/android/gms/internal/ads/zzhkn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzd(Lcom/google/android/gms/internal/ads/zzhkn;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgv;->zzd:Lcom/google/android/gms/internal/ads/zzhkk;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zze(Lcom/google/android/gms/internal/ads/zzhkk;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgv;->zze:Lcom/google/android/gms/internal/ads/zzhji;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzb(Lcom/google/android/gms/internal/ads/zzhji;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgv;->zzf:Lcom/google/android/gms/internal/ads/zzhjf;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkg;->zzc(Lcom/google/android/gms/internal/ads/zzhjf;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzhdv;)Lcom/google/android/gms/internal/ads/zzhlc;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhqf;->zze()Lcom/google/android/gms/internal/ads/zzhqe;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhoy;->zzd()Lcom/google/android/gms/internal/ads/zzhox;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdv;->zzc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhox;->zza(I)Lcom/google/android/gms/internal/ads/zzhox;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhoy;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqe;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdv;->zzd()Lcom/google/android/gms/internal/ads/zzhdu;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgv;->zzf(Lcom/google/android/gms/internal/ads/zzhdu;)Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhqe;->zzc(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhqe;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhqf;

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zza(Lcom/google/android/gms/internal/ads/zzhqf;)Lcom/google/android/gms/internal/ads/zzhlc;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhlc;)Lcom/google/android/gms/internal/ads/zzhdv;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhqf;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhoy;->zzc(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhoy;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhoy;->zzb()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdv;->zzb()Lcom/google/android/gms/internal/ads/zzhdt;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhoy;->zza()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhdt;->zza(I)Lcom/google/android/gms/internal/ads/zzhdt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgv;->zzg(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhdu;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzhdt;->zzb(Lcom/google/android/gms/internal/ads/zzhdu;)Lcom/google/android/gms/internal/ads/zzhdt;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhdt;->zzc()Lcom/google/android/gms/internal/ads/zzhdv;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 parameters are accepted"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesGcmSivParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzc()Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqf;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzhdo;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlb;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhow;->zzd()Lcom/google/android/gms/internal/ads/zzhov;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdo;->zze()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzian;->zzs([BII)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhov;->zza(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhov;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhow;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhqb;->zzb:Lcom/google/android/gms/internal/ads/zzhqb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdo;->zzf()Lcom/google/android/gms/internal/ads/zzhdv;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhdv;->zzd()Lcom/google/android/gms/internal/ads/zzhdu;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhgv;->zzf(Lcom/google/android/gms/internal/ads/zzhdu;)Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdo;->zzb()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 8
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzhqb;Lcom/google/android/gms/internal/ads/zzhqy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhlb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhdo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhow;->zzc(Lcom/google/android/gms/internal/ads/zzian;Lcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhow;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhow;->zza()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdv;->zzb()Lcom/google/android/gms/internal/ads/zzhdt;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhow;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhdt;->zza(I)Lcom/google/android/gms/internal/ads/zzhdt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhgv;->zzg(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhdu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhdt;->zzb(Lcom/google/android/gms/internal/ads/zzhdu;)Lcom/google/android/gms/internal/ads/zzhdt;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhdt;->zzc()Lcom/google/android/gms/internal/ads/zzhdv;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdo;->zzd()Lcom/google/android/gms/internal/ads/zzhdn;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhdn;->zza(Lcom/google/android/gms/internal/ads/zzhdv;)Lcom/google/android/gms/internal/ads/zzhdn;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhow;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhyg;->zza([BLcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p1

    .line 12
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzhdn;->zzb(Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhdn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zze()Ljava/lang/Integer;

    move-result-object p0

    .line 13
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzhdn;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhdn;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhdn;->zzd()Lcom/google/android/gms/internal/ads/zzhdo;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesGcmSivKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesGcmSivProtoSerialization.parseKey"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzhdu;)Lcom/google/android/gms/internal/ads/zzhqy;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdu;->zza:Lcom/google/android/gms/internal/ads/zzhdu;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhqy;->zzb:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdu;->zzb:Lcom/google/android/gms/internal/ads/zzhdu;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhqy;->zze:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object p0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhdu;->zzc:Lcom/google/android/gms/internal/ads/zzhdu;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    return-object p0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzhqy;)Lcom/google/android/gms/internal/ads/zzhdu;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhqy;->zza()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x22

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to parse OutputPrefixType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhdu;->zzc:Lcom/google/android/gms/internal/ads/zzhdu;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhdu;->zzb:Lcom/google/android/gms/internal/ads/zzhdu;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhdu;->zza:Lcom/google/android/gms/internal/ads/zzhdu;

    return-object p0
.end method
