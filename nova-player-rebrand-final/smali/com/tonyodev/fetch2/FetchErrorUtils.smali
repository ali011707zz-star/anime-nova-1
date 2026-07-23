.class public abstract Lcom/tonyodev/fetch2/FetchErrorUtils;
.super Ljava/lang/Object;
.source "FetchErrorUtils.kt"


# direct methods
.method public static final getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;
    .locals 5

    if-eqz p0, :cond_23

    .line 25
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 27
    :cond_0
    const-string v0, "request_with_file_path_already_exist"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_22

    .line 28
    const-string v0, "UNIQUE constraint failed: requests._file (code 2067)"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 30
    :cond_1
    const-string v0, "UNIQUE constraint failed: requests._id"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_ID_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 32
    :cond_2
    const-string v0, "empty_response_body"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget-object p0, Lcom/tonyodev/fetch2/Error;->EMPTY_RESPONSE_FROM_SERVER:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 34
    :cond_3
    const-string v0, "FNC"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "open failed: ENOENT (No such file or directory)"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 36
    :cond_4
    const-string v0, "recvfrom failed: ETIMEDOUT (Connection timed out)"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_20

    .line 37
    const-string v0, "timeout"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_20

    .line 38
    const-string v0, "Software caused connection abort"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_20

    .line 39
    const-string v0, "Read timed out at"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_3

    .line 41
    :cond_5
    const-string v0, "java.io.IOException: 404"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "No address associated with hostname"

    invoke-static {p0, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_2

    .line 43
    :cond_6
    const-string v0, "Unable to resolve host"

    invoke-static {p0, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44
    sget-object p0, Lcom/tonyodev/fetch2/Error;->UNKNOWN_HOST:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 45
    :cond_7
    const-string v0, "open failed: EACCES (Permission denied)"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 46
    sget-object p0, Lcom/tonyodev/fetch2/Error;->WRITE_PERMISSION_DENIED:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 47
    :cond_8
    const-string/jumbo v0, "write failed: ENOSPC (No space left on device)"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 48
    const-string v0, "database or disk is full (code 13)"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 50
    :cond_9
    const-string v0, "UNIQUE constraint failed: requests._id (code 1555)"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 52
    :cond_a
    const-string v0, "fetch download not found"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    sget-object p0, Lcom/tonyodev/fetch2/Error;->DOWNLOAD_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 54
    :cond_b
    const-string v0, "Fetch data base error"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 55
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FETCH_DATABASE_ERROR:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 56
    :cond_c
    const-string v0, "request_not_successful"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "Failed to connect"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_0

    .line 58
    :cond_d
    const-string v0, "invalid content hash"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    sget-object p0, Lcom/tonyodev/fetch2/Error;->INVALID_CONTENT_HASH:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 60
    :cond_e
    const-string v0, "download_incomplete"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    sget-object p0, Lcom/tonyodev/fetch2/Error;->UNKNOWN_IO_ERROR:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 62
    :cond_f
    const-string v0, "failed_to_update_request"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FAILED_TO_UPDATE_REQUEST:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 64
    :cond_10
    const-string v0, "failed_to_add_completed_download"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FAILED_TO_ADD_COMPLETED_DOWNLOAD:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 66
    :cond_11
    const-string v0, "fetch_file_server_invalid_response_type"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 67
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_INVALID_RESPONSE:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 68
    :cond_12
    const-string v0, "request_does_not_exist"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 69
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_DOES_NOT_EXIST:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 70
    :cond_13
    const-string v0, "no_network_connection"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 71
    sget-object p0, Lcom/tonyodev/fetch2/Error;->NO_NETWORK_CONNECTION:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 72
    :cond_14
    const-string v0, "file_not_found"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 73
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FILE_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 74
    :cond_15
    const-string v0, "fetch_file_server_url_invalid"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 75
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FETCH_FILE_SERVER_URL_INVALID:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 76
    :cond_16
    const-string v0, "request_list_not_distinct"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 77
    sget-object p0, Lcom/tonyodev/fetch2/Error;->ENQUEUED_REQUESTS_ARE_NOT_DISTINCT:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 78
    :cond_17
    const-string v0, "enqueue_not_successful"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 79
    sget-object p0, Lcom/tonyodev/fetch2/Error;->ENQUEUE_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 80
    :cond_18
    const-string v0, "cannot rename file associated with incomplete download"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 81
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_INCOMPLETE_DOWNLOAD_FILE:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 82
    :cond_19
    const-string v0, "file_cannot_be_renamed"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 83
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FAILED_TO_RENAME_FILE:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 84
    :cond_1a
    const-string v0, "file_allocation_error"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 85
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FILE_ALLOCATION_FAILED:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 86
    :cond_1b
    const-string v0, "Cleartext HTTP traffic to"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 87
    sget-object p0, Lcom/tonyodev/fetch2/Error;->HTTP_CONNECTION_NOT_ALLOWED:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 89
    :cond_1c
    sget-object p0, Lcom/tonyodev/fetch2/Error;->UNKNOWN:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 57
    :cond_1d
    :goto_0
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_NOT_SUCCESSFUL:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 49
    :cond_1e
    :goto_1
    sget-object p0, Lcom/tonyodev/fetch2/Error;->NO_STORAGE_SPACE:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 42
    :cond_1f
    :goto_2
    sget-object p0, Lcom/tonyodev/fetch2/Error;->HTTP_NOT_FOUND:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 40
    :cond_20
    :goto_3
    sget-object p0, Lcom/tonyodev/fetch2/Error;->CONNECTION_TIMED_OUT:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 35
    :cond_21
    :goto_4
    sget-object p0, Lcom/tonyodev/fetch2/Error;->FILE_NOT_CREATED:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 29
    :cond_22
    :goto_5
    sget-object p0, Lcom/tonyodev/fetch2/Error;->REQUEST_WITH_FILE_PATH_ALREADY_EXIST:Lcom/tonyodev/fetch2/Error;

    return-object p0

    .line 26
    :cond_23
    :goto_6
    sget-object p0, Lcom/tonyodev/fetch2/Error;->UNKNOWN:Lcom/tonyodev/fetch2/Error;

    return-object p0
.end method

.method public static final getErrorFromThrowable(Ljava/lang/Throwable;)Lcom/tonyodev/fetch2/Error;
    .locals 3

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 11
    :cond_0
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 12
    const-string v0, "timeout"

    .line 14
    :cond_1
    invoke-static {v0}, Lcom/tonyodev/fetch2/FetchErrorUtils;->getErrorFromMessage(Ljava/lang/String;)Lcom/tonyodev/fetch2/Error;

    move-result-object v0

    .line 16
    sget-object v2, Lcom/tonyodev/fetch2/Error;->UNKNOWN:Lcom/tonyodev/fetch2/Error;

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    sget-object v0, Lcom/tonyodev/fetch2/Error;->CONNECTION_TIMED_OUT:Lcom/tonyodev/fetch2/Error;

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 17
    instance-of v1, p0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/tonyodev/fetch2/Error;->UNKNOWN_IO_ERROR:Lcom/tonyodev/fetch2/Error;

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {v0, p0}, Lcom/tonyodev/fetch2/Error;->setThrowable(Ljava/lang/Throwable;)V

    return-object v0
.end method
