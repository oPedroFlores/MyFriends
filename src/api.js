export const API_URL = 'http://myfriends.test/json';

export function TOKEN_POST(body) {
  return {
    url: API_URL + '/jwt-auth/v1/token',
    options: {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(body),
    },
  };
}

export function TOKEN_VALIDATE_POST(token) {
  return {
    url: API_URL + '/jwt-auth/v1/token/validate',
    options: {
      method: 'POST',
      headers: {
        Authorization: 'Bearer ' + token,
      },
    },
  };
}

export function USER_GET(token) {
  return {
    url: API_URL + '/api/user',
    options: {
      method: 'GET',
      headers: {
        Authorization: 'Bearer ' + token,
      },
    },
  };
}

export function USER_POST(body) {
  return {
    url: API_URL + '/api/user',
    options: {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(body),
    },
  };
}

export function PHOTO_POST(formData, token) {
  return {
    url: API_URL + '/api/photo',
    options: {
      method: 'POST',
      headers: {
        Authorization: 'Bearer ' + token,
      },
      body: formData,
    },
  };
}

export function PHOTOS_GET({ page, total, user, body }) {
  if (window.localStorage.getItem('token')) {
    return {
      url: `${API_URL}/api/photo/?_page=${page}&_total=${total}&_user=${user}`,
      options: {
        method: 'GET',
        cache: 'no-store',
        headers: {
          Authorization: 'Bearer ' + window.localStorage.getItem('token'),
          'Content-Type': 'application/json',
        },
      },
    };
  } else {
    return {
      url: `${API_URL}/api/photo/?_page=${page}&_total=${total}&_user=${user}`,
      options: {
        method: 'GET',
        cache: 'no-store',
        headers: {
          'Content-Type': 'application/json',
        },
      },
    };
  }
}

export function PHOTO_GET(id) {
  if (window.localStorage.getItem('token')) {
    return {
      url: `${API_URL}/api/photo/${id}`,
      options: {
        method: 'GET',
        headers: {
          Authorization: 'Bearer ' + window.localStorage.getItem('token'),
          'Content-Type': 'application/json',
        },
      },
    };
  } else {
    return {
      url: `${API_URL}/api/photo/${id}`,
      options: {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
        },
      },
    };
  }
}

export function COMMENT_POST(id, body) {
  return {
    url: `${API_URL}/api/comment/${id}`,
    options: {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: 'Bearer ' + window.localStorage.getItem('token'),
      },
      body: JSON.stringify(body),
    },
  };
}

export function PHOTO_DELETE(id) {
  return {
    url: `${API_URL}/api/photo/${id}`,
    options: {
      method: 'DELETE',
      headers: {
        Authorization: 'Bearer ' + window.localStorage.getItem('token'),
      },
    },
  };
}

export function COMMENT_DELETE(id) {
  return {
    url: `${API_URL}/api/comment/${id}`,
    options: {
      method: 'DELETE',
      headers: {
        Authorization: 'Bearer ' + window.localStorage.getItem('token'),
      },
    },
  };
}

export function PASSWORD_LOST(body) {
  return {
    url: API_URL + '/api/password/lost',
    options: {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(body),
    },
  };
}

export function PASSWORD_RESET(body) {
  return {
    url: API_URL + '/api/password/reset',
    options: {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(body),
    },
  };
}

export function STATS_GET(body) {
  return {
    url: API_URL + '/api/stats',
    options: {
      method: 'GET',
      headers: {
        Authorization: 'Bearer ' + window.localStorage.getItem('token'),
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(body),
    },
  };
}

export function LIKE_INFO(id) {
  return {
    url: API_URL + `/api/likeinfo/${id}`,
    options: {
      method: 'GET',
      headers: {
        Authorization: 'Bearer ' + window.localStorage.getItem('token'),
        'Content-Type': 'application/json',
      },
    },
  };
}

export function LIKE(id) {
  return {
    url: API_URL + `/api/like/${id}`,
    options: {
      method: 'GET',
      headers: {
        Authorization: 'Bearer ' + window.localStorage.getItem('token'),
        'Content-Type': 'application/json',
      },
    },
  };
}
