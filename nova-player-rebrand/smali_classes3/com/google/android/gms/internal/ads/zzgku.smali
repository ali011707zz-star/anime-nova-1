.class final Lcom/google/android/gms/internal/ads/zzgku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lj$/util/Optional;

.field private zzb:Lj$/util/Optional;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbcf;)Z
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcf;->zza()Lcom/google/android/gms/internal/ads/zzbcl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zzb()Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbcn;->zzb()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcf;->zza()Lcom/google/android/gms/internal/ads/zzbcl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zzd()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzian;->zzy()[B

    move-result-object p1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgku;->zza:Lj$/util/Optional;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgku;->zzb:Lj$/util/Optional;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhut;->zza()V

    new-instance v2, Ljava/lang/String;

    .line 4
    invoke-static {}, Lj$/util/Base64;->getDecoder()Lj$/util/Base64$Decoder;

    move-result-object v3

    const-string v4, "eyJwcmltYXJ5S2V5SWQiOjMzMTUxOTk4MTksImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQVNoRGZwOUM5QjcrMU1nMmJQbHJ5WExPOHVScDd6YWZJMldSYURmR1ZqVmlJaEFJNFZzTmVrcCs0bVY0d2toZlhVb3pQZWs5TjgxcUdIK2plNnhjOFpoQkhQIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMzE1MTk5ODE5LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0="

    invoke-virtual {v3, v4}, Lj$/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhbu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbk;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlf;->zzc()Lcom/google/android/gms/internal/ads/zzhlf;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzg(Lcom/google/android/gms/internal/ads/zzhaw;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhbs;

    .line 7
    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgku;->zza:Lj$/util/Optional;

    new-instance v2, Ljava/lang/String;

    .line 8
    invoke-static {}, Lj$/util/Base64;->getDecoder()Lj$/util/Base64$Decoder;

    move-result-object v3

    const-string v4, "eyJwcmltYXJ5S2V5SWQiOjMwODI3ODA4ODgsImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQkEyWW5HaWFpc3pEcGtJcWpjalorUTJ2alFUUldQZjhFcTlkZVlhNFpKa3lJaEFCQWFESTd6QWJkQXVpQmlnOWdHSkJ1VTUzSGg5Z0RCa0t2amswS2tabDhjIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMDgyNzgwODg4LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0="

    invoke-virtual {v3, v4}, Lj$/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhbu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbk;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlf;->zzc()Lcom/google/android/gms/internal/ads/zzhlf;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhbk;->zzg(Lcom/google/android/gms/internal/ads/zzhaw;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhbs;

    .line 11
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgku;->zzb:Lj$/util/Optional;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_2
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Failed to verify program"

    invoke-direct {v2, v3, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgku;->zza:Lj$/util/Optional;

    .line 13
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgku;->zza:Lj$/util/Optional;

    .line 14
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhbs;->zza([B[B)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgku;->zzb:Lj$/util/Optional;

    .line 15
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgku;->zzb:Lj$/util/Optional;

    .line 16
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhbs;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhbs;->zza([B[B)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :catch_2
    const/4 p1, 0x0

    return p1
.end method
